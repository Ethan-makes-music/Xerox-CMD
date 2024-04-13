//Xerox: CMD V1.0

class Main {
    static function main() {
        trace("Welcome to XeroxCMD\nWhat would you like to create?\n(1 = RPG, 2 = Platformer, 3 = Custom)");
        plrIO();
    }

    static function plrIO() {
        //Folder Names
        var rpgFolderName:String = "RpgTemplate";
        var platformerFolderName:String = "PlatformerTemplate";

        //Links
        var repositoryUrlRPG = "https://github.com/Ethan-makes-music/Rpg-Template.git";
        var repositoryUrlPlatformer = "https://github.com/Ethan-makes-music/Platformer-Template.git";

        //plrIO
        var playerIO = Sys.stdin().readLine();

        if (playerIO == Std.string(1))
        {
            cloneRepository(repositoryUrlRPG, rpgFolderName);
        }
        else if (playerIO == Std.string(2))
        {
            cloneRepository(repositoryUrlPlatformer, platformerFolderName);
        }
        else if (playerIO == Std.string(3))
        {
            trace("Put in your repository URL");
            var customUrl = Sys.stdin().readLine();

            trace("Ok, now, what do you want your folder Name to be?");
            var customFolderName = Sys.stdin().readLine();

            cloneRepository(customUrl, customFolderName);
        }
    }

    static function cloneRepository(repositoryUrl:String, destination:String):Void
    {
        var gitCommand = "git clone " + repositoryUrl + " " + destination;
    
        //Execute The git clone command to clone the repository
        #if sys
        var result = Sys.command(gitCommand);
        trace(result);
        #end
    }
}
