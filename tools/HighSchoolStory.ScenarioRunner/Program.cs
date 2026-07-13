namespace HighSchoolStory.ScenarioRunner;

internal static class Program
{
    private const int InvalidInputExitCode = 2;

    private static int Main(string[] args)
    {
        if (args is ["--help"])
        {
            Console.WriteLine("Usage: HighSchoolStory.ScenarioRunner <fixture-path>");
            return 0;
        }

        if (args is ["--version"])
        {
            Console.WriteLine("HighSchoolStory.ScenarioRunner 0.1.0");
            return 0;
        }

        if (args.Length == 0 || !File.Exists(args[0]))
        {
            Console.Error.WriteLine("Fixture path is required and must exist.");
            return InvalidInputExitCode;
        }

        Console.WriteLine("Scenario execution is not implemented yet.");
        return 0;
    }
}
