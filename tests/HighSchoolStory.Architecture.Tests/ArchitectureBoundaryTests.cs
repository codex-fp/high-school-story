using System.Diagnostics;
using System.Reflection;
using System.Text.Json;
using System.Xml.Linq;
using ArchUnitNET.Domain;
using ArchUnitNET.Fluent;
using ArchUnitNET.Loader;
using ArchUnitNET.xUnitV3;
using Xunit;
using static ArchUnitNET.Fluent.ArchRuleDefinition;

namespace HighSchoolStory.Architecture.Tests;

public sealed class ArchitectureBoundaryTests
{
    private static readonly ArchUnitNET.Domain.Architecture Architecture = new ArchLoader().LoadAssemblies(
        System.Reflection.Assembly.Load("HighSchoolStory.Domain"),
        System.Reflection.Assembly.Load("HighSchoolStory.Application"),
        System.Reflection.Assembly.Load("HighSchoolStory.Content")).Build();

    [Fact]
    public void DomainMustNotDependOnForbiddenBoundaries()
    {
        IArchRule rule = Types().That().ResideInAssembly("HighSchoolStory.Domain")
            .Should().NotDependOnAny(
                Types().That().ResideInNamespaceMatching("Godot.*")
                    .Or().ResideInNamespaceMatching("R3.*")
                    .Or().ResideInNamespaceMatching("HighSchoolStory.Ports.*")
                    .Or().ResideInNamespaceMatching("System.Text.Json.*")
                    .Or().ResideInNamespaceMatching("Microsoft.Extensions.Logging.*"))
            .Because("Domain must remain independent of engine, UI, ports, JSON, and logging")
            .WithoutRequiringPositiveResults();
        rule.Check(Architecture);
    }

    [Fact]
    public void ApplicationAndContentMustNotDependOnForbiddenBoundaries()
    {
        IArchRule applicationRule = Types().That().ResideInAssembly("HighSchoolStory.Application")
            .Should().NotDependOnAny(
                Types().That().ResideInNamespaceMatching("Godot.*")
                    .Or().ResideInNamespaceMatching("System.Text.Json.*"))
            .WithoutRequiringPositiveResults();
        applicationRule.Check(Architecture);

        IArchRule contentRule = Types().That().ResideInAssembly("HighSchoolStory.Content")
            .Should().NotDependOnAny(
                Types().That().ResideInNamespaceMatching("Godot.*")
                    .Or().ResideInNamespaceMatching("HighSchoolStory.Application.*"))
            .WithoutRequiringPositiveResults();
        contentRule.Check(Architecture);
    }

    [Fact]
    public void ProjectFilesMustDeclareRequiredBoundaryRules()
    {
        AssertProjectHasNoForbiddenReferences("src/HighSchoolStory.Domain/HighSchoolStory.Domain.csproj", "Godot", "R3", "Ports", "Json", "Logging");
        AssertProjectHasNoForbiddenReferences("src/HighSchoolStory.Application/HighSchoolStory.Application.csproj", "Godot", "Json");
        AssertProjectHasNoForbiddenReferences("src/HighSchoolStory.Content/HighSchoolStory.Content.csproj", "Godot", "HighSchoolStory.Application");

        var host = LoadProject("High School Story.csproj");
        var exclusions = host.Descendants().Where(element => element.Name.LocalName == "Compile")
            .Select(element => (string?)element.Attribute("Remove"))
            .Where(value => value is not null)
            .Cast<string>();

        foreach (var required in new[] { "src\\HighSchoolStory.Domain", "src\\HighSchoolStory.Application", "src\\HighSchoolStory.Ports", "src\\HighSchoolStory.Content", "tools\\", "tests\\" })
        {
            Assert.Contains(exclusions, exclusion => exclusion.StartsWith(required, StringComparison.Ordinal));
        }
    }

    [Fact]
    public async Task RootGodotHostMustNotCompileCleanLibraryToolOrTestSources()
    {
        var root = FindRepositoryRoot();
        var startInfo = new ProcessStartInfo("dotnet")
        {
            WorkingDirectory = root,
            RedirectStandardOutput = true,
            RedirectStandardError = true,
            UseShellExecute = false,
        };
        startInfo.ArgumentList.Add("msbuild");
        startInfo.ArgumentList.Add("High School Story.csproj");
        startInfo.ArgumentList.Add("-getItem:Compile");
        startInfo.ArgumentList.Add("-nologo");

        using var process = Process.Start(startInfo);
        Assert.NotNull(process);

        var cancellationToken = TestContext.Current.CancellationToken;
        var standardOutput = process.StandardOutput.ReadToEndAsync(cancellationToken);
        var standardError = process.StandardError.ReadToEndAsync(cancellationToken);
        await process.WaitForExitAsync(cancellationToken);

        Assert.True(process.ExitCode == 0, $"MSBuild item evaluation failed: {await standardError}");

        using var document = JsonDocument.Parse(await standardOutput);
        var compileItems = document.RootElement.GetProperty("Items").GetProperty("Compile");
        var forbiddenDirectories = new[] { "src/HighSchoolStory.Domain/", "src/HighSchoolStory.Application/", "src/HighSchoolStory.Ports/", "src/HighSchoolStory.Content/", "tools/", "tests/" };

        foreach (var item in compileItems.EnumerateArray())
        {
            var path = item.GetProperty("Identity").GetString()?.Replace('\\', '/') ?? string.Empty;
            Assert.DoesNotContain(forbiddenDirectories, directory => path.StartsWith(directory, StringComparison.OrdinalIgnoreCase));
        }
    }

    private static void AssertProjectHasNoForbiddenReferences(string projectPath, params string[] forbiddenTokens)
    {
        var references = LoadProject(projectPath).Descendants()
            .Where(element => element.Name.LocalName is "ProjectReference" or "PackageReference")
            .Select(element => (string?)element.Attribute("Include"))
            .Where(value => value is not null)
            .Cast<string>();

        foreach (var token in forbiddenTokens)
        {
            Assert.DoesNotContain(references, reference => reference.Contains(token, StringComparison.OrdinalIgnoreCase));
        }
    }

    private static XDocument LoadProject(string relativePath) => XDocument.Load(Path.Combine(FindRepositoryRoot(), relativePath));

    private static string FindRepositoryRoot()
    {
        for (var directory = new DirectoryInfo(AppContext.BaseDirectory); directory is not null; directory = directory.Parent)
        {
            if (File.Exists(Path.Combine(directory.FullName, "High School Story.sln"))) return directory.FullName;
        }

        throw new InvalidOperationException("Repository root containing High School Story.sln was not found.");
    }
}
