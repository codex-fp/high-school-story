namespace HighSchoolStory.ContentValidator;

internal static class Program
{
    private const int InvalidInputExitCode = 2;

    private static int Main(string[] args)
    {
        if (args is ["--help"])
        {
            Console.WriteLine("Usage: HighSchoolStory.ContentValidator <content-path> [--profile <profile>]");
            return 0;
        }

        if (args is ["--version"])
        {
            Console.WriteLine("HighSchoolStory.ContentValidator 0.1.0");
            return 0;
        }

        if (args.Length == 0 || !Directory.Exists(args[0]))
        {
            Console.Error.WriteLine("Content path is required and must exist.");
            return InvalidInputExitCode;
        }

        Console.WriteLine("Content validation is not implemented yet.");
        return 0;
    }
}
