using System.Diagnostics;
using System.Reflection;
using Xunit;

namespace HighSchoolStory.Scenario.Tests;

public sealed class ToolCliContractTests
{
    public static TheoryData<string, string, int, string, bool> ToolInvocations => new()
    {
        { "HighSchoolStory.ContentValidator", "--help", 0, "Usage: HighSchoolStory.ContentValidator", false },
        { "HighSchoolStory.ContentValidator", "--version", 0, "HighSchoolStory.ContentValidator 0.1.0", false },
        { "HighSchoolStory.ContentValidator", MissingPath(), 2, "Content path is required and must exist.", true },
        { "HighSchoolStory.ScenarioRunner", "--help", 0, "Usage: HighSchoolStory.ScenarioRunner", false },
        { "HighSchoolStory.ScenarioRunner", "--version", 0, "HighSchoolStory.ScenarioRunner 0.1.0", false },
        { "HighSchoolStory.ScenarioRunner", MissingPath(), 2, "Fixture path is required and must exist.", true },
    };

    [Theory]
    [MemberData(nameof(ToolInvocations))]
    public async Task Tool_exposes_expected_cli_contract(
        string toolName,
        string argument,
        int expectedExitCode,
        string expectedOutput,
        bool expectsStandardError)
    {
        var result = await RunToolAsync(toolName, argument);

        Assert.Equal(expectedExitCode, result.ExitCode);
        Assert.Contains(expectedOutput, expectsStandardError ? result.StandardError : result.StandardOutput);
    }

    private static async Task<ProcessResult> RunToolAsync(string toolName, string argument)
    {
        var startInfo = new ProcessStartInfo("dotnet")
        {
            WorkingDirectory = FindRepositoryRoot(),
            RedirectStandardOutput = true,
            RedirectStandardError = true,
            UseShellExecute = false,
        };
        startInfo.ArgumentList.Add("run");
        startInfo.ArgumentList.Add("--no-build");
        startInfo.ArgumentList.Add("--project");
        startInfo.ArgumentList.Add(Path.Combine("tools", toolName, $"{toolName}.csproj"));
        startInfo.ArgumentList.Add("--configuration");
        startInfo.ArgumentList.Add(CurrentConfiguration());
        startInfo.ArgumentList.Add("--");
        startInfo.ArgumentList.Add(argument);

        using var process = Process.Start(startInfo);
        Assert.NotNull(process);

        var standardOutput = process.StandardOutput.ReadToEndAsync();
        var standardError = process.StandardError.ReadToEndAsync();
        await process.WaitForExitAsync();

        return new ProcessResult(process.ExitCode, await standardOutput, await standardError);
    }

    private static string CurrentConfiguration() =>
        Assembly.GetExecutingAssembly().GetCustomAttribute<AssemblyConfigurationAttribute>()?.Configuration ?? "Debug";

    private static string FindRepositoryRoot()
    {
        var directory = new DirectoryInfo(AppContext.BaseDirectory);
        while (directory is not null && !File.Exists(Path.Combine(directory.FullName, "High School Story.sln")))
        {
            directory = directory.Parent;
        }

        return directory?.FullName ?? throw new DirectoryNotFoundException("Repository root was not found.");
    }

    private static string MissingPath() => Path.Combine(Path.GetTempPath(), $"high-school-story-missing-{Guid.NewGuid():N}");

    private sealed record ProcessResult(int ExitCode, string StandardOutput, string StandardError);
}
