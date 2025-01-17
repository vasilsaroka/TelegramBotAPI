[![GitHub (pre-)release](https://img.shields.io/github/release/vasilsaroka/TelegramBotAPI/all.svg)](https://github.com/vasilsaroka/TelegramBotAPI/releases)
[![Github All Releases](https://img.shields.io/github/downloads/vasilsaroka/TelegramBotAPI/total.svg)](https://github.com/vasilsaroka/TelegramBotAPI/releases)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Support TBpack](https://img.shields.io/static/v1?label=support&message=5$&color=green&style=flat&logo=paypal)](https://paypal.me/vasilsaroka?locale.x=en_GB)

# TelegramBotAPI  [<img align="right" src="https://github.com/vasilsaroka/TelegramBotAPI/blob/main/Pictures/Logo_TBpack.png" alt="TBpack Logo" width="125"/>](https://www.tbpack.co.uk/)
 Telegram Bot API for Wolfram Language by [TBpack Ltd.](https://www.tbpack.co.uk/)

## Installation guide
 - **The recommended option** in Mathematica 12.1+ ``PacletInstall["url"]`` can be used for the installation straight away: 



        
        PacletInstall["https://github.com/vasilsaroka/TelegramBotAPI/releases/download/v<version>/TelegramBotAPI-<version>.paclet"]  
   where `<version>` stands for any existing version of the application. For example,
   
       PacletInstall["https://github.com/vasilsaroka/TelegramBotAPI/releases/download/v0.1.0/TelegramBotAPI-0.1.0.paclet"]
   
 - An alternative manual intallation option for Mathematica 10.0+ is the following. [Download the latest release](https://github.com/vasilsaroka/TelegramBotAPI/releases), distributed as a `.paclet` file, and install it using the `PacletInstall` function in Mathematica:

        Needs["PacletManager`"]
        PacletInstall["path2paclet"]
        
   Insert `path2paclet` via Mathematica's Insert → File Path... menu command.
   
## Demo
### Basic response loop
 - Evaluate ``<<TelegramBotAPI` `` to load the package into the Wolfram Language session.
 - Test TelegramBotAPI using `?getUpdates` to invoke help for the given function. Do the same for functions `getChatId, getMessageText, sendMessage`.
 - Create your own bot and obtain a bot token following [BotFather](https://t.me/BotFather) instructions.
 - Set `$BotToken` constant of ``TelegramBotAPI` `` context to the bot token obtained from BotFather in the previous step:

       $BotToken="your bot token here"
   
 - Write "Hi" message to your bot in Telegram.
 - Evaluate the following code to get the update with you "Hi" message in the Wolfram Language session:

       update = Last[getUpdates[]]
     
 - Reply to the "Hi" message from within your Wolfram Language session:

       sendMessage[getChatId[update], "Hi there :) "]
   
 Congratulations! You have just implemented the basic bot response loop! Now we can try to run it infinitely long by using available programming loops.
 ### Running the basic response loop
 - A simple function for running basic response loop can be defined as follows (N.B. may not work if you have not sent a message to the bot before running it):

       Clear[BotMain];
       BotMain[] := Block[
       {
        update, updateId, chatId, messagetext
       },
       update = Last[getUpdates[Offset->-1]];
       updateId = Lookup[update, "update_id"];
       While[
   	          True,
             	update = Last[getUpdates[Offset->-1]];
   	          If[
    		            updateId == Lookup[update, "update_id"],
    		            (* new update is available; try to get chat id and message text *)
    		            chatId = getChatId[update];
    		            messagetext = getMessageText[update];
                  (* reply to the message *)
    		            Switch[
     				                  messagetext,
     				                  "Hi", sendMessage[chatId, "Hi :)"],
     				                  "Mahal kita", sendMessage[chatId, "Mahal din kita"],
                           _, 
                           sendMessage[chatId, "Sorry, I do not understand this message :)"]	
     		          ](* end Switch *);
    		        updateId++ 
    	         ](* end If *);
       ](* end While *)
       ](* end Block *)
   
 - Copy and paste the above function into Wolfram Notebook cell and evaluate it to make the definition of the function known to the current session. [<img align="right" src="https://github.com/vasilsaroka/TelegramBotAPI/blob/main/Pictures/Aminat_Nweke%2BOpenAI.JPG" alt="TBpack Logo" width="210"/>](https://t.me/AminatNweke_tbpack_bot)

 - Run the above defined function in a separate Notebook cell:
    
       BotMain[]

Congratulations! Now your bot is active and responsive. To terminate the cell evaluation (that is set to run *infinitely long!*) use `Alt+.`.

More complicated bots including LLMs and functions like `SpeechRecognize` can be developed with a similar structure in mind. See, for example, our conference virtual secretary [Aminat](https://t.me/AminatNweke_tbpack_bot).

## WLJS Notebooks - Electron application
   The [Electron application](https://github.com/JerryI/wolfram-js-frontend/releases) is an open-source javascript-based cross-platform graphical user interface for running Wolfram Language code via a [Wolfram Engine](https://www.wolfram.com/engine/). It is an actively developed [project](https://github.com/JerryI/wolfram-js-frontend) that is getting popularity due to its simplicity and ability to combine Wolfram Language with Javescript and Markdown. While WLJS notebooks are not superior to the original Mathematica notebooks, they do have some features such as gpt-based copilot, powerful command palette system, and enhanced animation capbilitites that may transform them into a useful companion if not a real contender of original notebooks. 
   
   We plan to release whenever possible special patches tagged as vX.Y.1, where 'X' and 'Y' are some integers, of TelegramBotAPI that can be installed into the Electron application.  
   ### Installation guide
   - Install [Wolfram Engine](https://www.wolfram.com/engine/) (14.0 or higher)
   - Install [Electron application](https://jerryi.github.io/wljs-docs/) (2.5.6 or higher)
   - Proceed to an automated installation of TelegramBotAPI:

     Copy-paste the below function into a WLSJ notebook cell. Evaluate the cell, for example by pressing `Shift+Enter`, to make the definition of this function known to the Wolfram Engine. In the next cell, type `InstallTelegramBotAPI4Electron[]` and evaluate it.

           Options[InstallTelegramBotAPI4Electron]={Mehtod->"Install" (* or "Uninstall" *) };
           InstallTelegramBotAPI4Electron[OptionsPattern[]]:=Block[
           {
              method=OptionValue[Method],
              pacletsrepository, pacletdirectory, message1, message2, jsonreleases, info, url, message, tempfile, 
              version = "v0.2.1" (* special TelegramBotAPI patch for Electron *),
              giturl = "https://api.github.com/repos/vasilsaroka/TelegramBotAPI/releases",
              deletedirectory
           },
           (* auxiliary routine *)
           deletedirectory[dir_,successmessage_,failuremessage_]:=Block[{res},
           If[
                 DirectoryQ[dir],
                 res = DeleteDirectory[dir,DeleteContents->True];
                 If[res===Null, Print[successmessage], Print[failuremessage]]
            ];
            ](* end Block *);
            (* set up directory for the installation *)
            pacletsrepository = FileNameJoin[$InitialDirectory,"wl_packages"];
            pacletdirectory = FileNameJoin[{pacletsrepository,"TelegramBotAPI-"<>StringTake[version,{2,-1}]}];
            (* some general information messages *)
            (* success message *)
            message1 = "TelegramBotAPI has been succefully uninstalled from Electron application.";
            (* failure message *)
            message2 = "Failed to uninstall the existing TelegramBotAPI installation. Probaply due to its current usage by another application.";
            (* select the method *)
            Switch[
                    method,
                    "Install",
                    (* check that an installation folder does not contain TelegramBotAPI version *)
                    (* clear the folder from the previously installed TelegramBotAPI version of the same type as is to be installed *)
                    deletedirectory[pacletdirectory,message1,message2];       
                    (* proceed to the installation/re-installation *)
                    jsonreleases = Import[giturl,"JSON"];
                    If[
                       jsonreleases === $Failed, 
                       message = "Cannot access GitHub releases: "<>giturl<>". Please, check your internet connection.";
                       Print[message]; Return[$Failed],
                       (* successful access to GitHub releases *)
                       info = "Looking for TelegramBotAPI " <> version;
                       Print[info <> "..."];
                       pos=Position[Lookup[jsonreleases, "tag_name"],version][[1,1]];
                       url=First@Lookup[Lookup[jsonreleases, "assets"][[pos]],"browser_download_url"];
                       If[
                          $VersionNumber >= 14.0,
                          tempfile = FileNameJoin[{$TemporaryDirectory,FileNameTake[url]}];
                          Check[tempfile = URLDownload[url,tempfile],Return[$Failed]];
                          (* check if the downloaded paclet file still exist on disk and install it *)
                          If[
                             FileExistsQ[tempfile],
                             pacletsrepository=FileNameJoin[$InitialDirectory,"wl_packages"];          
                             Check[ExtractPacletArchive[tempfile,pacletsrepository],Return[$Failed]];
                             DeleteFile[tempfile];
                             message = "TelegramBotAPI is succefully installed into Electron application. It is located at "<>pacletsrepository<>". Now close Electron application and open it again. After this use Needs[''TelegramBotAPI`''], where '' is meant to be \" symbol (double quotation mark, entered without backslash), to activate TelegramBotAPI for the session.";
                             Print[message],
                             message="Installation failed...";
                             Print[message]; Return[$Failed]
                          ],
                          message="It is recommended to use the latest Wolfram Engine that is version 14.0 or higher. Update Wolfram Engine and repeat installation of TelegramBotAPI.";
                          Print[message]; Return[$Failed]
                       ](* end If version *)
                    ](* end If GitHub releases*),
                    "Uninstall",
                    (* clear the folder from the previously installed TelegramBotAPI *)
                    deletedirectory[pacletdirectory,message1,message2]; 
            ](* end Switch *)
          ](* end Block *)

      **Note:** After successful installation, you will have to restart Electron application to make TelegramBotAPI visible for ``Needs["TelegramBotAPI`"]``.

     To uninstall the installed TBpack version, evaluate

         InstallTelegramBotAPI4Electron[Mehtod->"Uninstall"]

   - Manual installation of TelegramBotAPI is possible (try only if automated option above has failed):
      - Download `.paclet` file of the [TelegramBotAPI patch released](https://github.com/vasilsaroka/TelegramBotAPI/releases/download/v0.2.0/TelegramBotAPI-0.2.1.paclet) for the Electron application.
      - Extract the paclet file into the installation folder by evaluating in the Electron application cell the following line:

            ExtractPacletArchive["path2paclet",FileNameJoin[$InitialDirectory,"wl_packages"]]
        
      - Restart Electron application to make TelegramBotAPI visible for ``Needs["TelegramBotAPI`"]``.

   ### WLJS Notebook Demo
   - Evaluate ``Needs[TelegramBotAPI`]`` to load TelegramBotAPI into the Wolfram Engine session run in Electron application.
   - Test TelegramBotAPI trying, for example, ElevenLabs API `textToSpeechXI`:

![WLJS_notebook_ElevenLabspng](https://github.com/user-attachments/assets/f6924e51-3b3e-4d72-bc31-ba29c4560371)

## Supporting the project
   We believe that everyone deserves access to reliable, science-based knowledge. That's why we keep our code open and accessible to all, no matter their location or financial situation. By doing this, we empower more people to educate themselves and contribute to global wellbeing. Unlike major corporations, we are not backed by billionaire owners; our work is entirely powered by your generosity. Your donations are essential in keeping our project open and available to everyone. Every contribution, no matter the size, has a significant impact on the future of TBpack. If our work has benefited you, please consider [making a donation](https://paypal.me/vasilsaroka?locale.x=en_GB). Together, we can make a difference. 
