[![GitHub (pre-)release](https://img.shields.io/github/release/vasilsaroka/TelegramBotAPI/all.svg)](https://github.com/vasilsaroka/TelegramBotAPI/releases)
[![Github All Releases](https://img.shields.io/github/downloads/vasilsaroka/TelegramBotAPI/total.svg)](https://github.com/vasilsaroka/TelegramBotAPI/releases)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Support TBpack](https://img.shields.io/static/v1?label=support&message=5$&color=green&style=flat&logo=paypal)](https://paypal.me/vasilsaroka?locale.x=en_GB)

# TelegramBotAPI
 Telegram Bot API for Wolfram Language by [TBpack Ltd.](https://www.tbpack.co.uk/)

## Installation guide
 - **The recommended option** in Mathematica 12.1+ ``PacletInstall["url"]`` can be used for the installation straight away: [<img align="right" src="https://github.com/vasilsaroka/TelegramBotAPI/blob/main/Pictures/Logo_TBpack.png" alt="TBpack Logo" width="250"/>](https://www.tbpack.co.uk/)



        
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
 - A simple function for running basic response loop can be defined as follows:

       Clear[BotMain];
       BotMain[] := Block[
       {
        update, updateId, chatId, messagetext
       },
       update = Last[getUpdates[]];
       updateId = Lookup[update, "update_id"];
       While[
   	          True,
             	update = Last[getUpdates[]];
   	          If[
    		            updateId == Lookup[update, "update_id"],
    		            (* new update is available; try to get chat id and message text *)
    		            chatId = getChatId[update];
    		            messagetext = getMessageText[update];
                  (* reply to the message \*)
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
   
 - Copy and paste the above function into Wolfram Notebook cell and evaluate it to make the definition of the function known to the current session. [<img align="right" src="https://github.com/vasilsaroka/TelegramBotAPI/blob/main/Pictures/Aminat_Nweke%2BOpenAI.JPG" alt="TBpack Logo" width="250"/>](https://t.me/AminatNweke_tbpack_bot)

 - Run the above defined function in a separate Notebook cell:
    
       BotMain[]

Congratulations! Now your bot is active and responsive. To terminate the cell evaluation (that is set to run *infinitely long!*) use `Alt+.`.

More complicated bots including LLMs and functions like `SpeechRecognize` can be developed with a similar structure in mind. See, for example, our conference virtual secretary [Aminat](https://t.me/AminatNweke_tbpack_bot) 

Put a star to this repository if you think other API functions, such as those used for [Aminat](https://t.me/AminatNweke_tbpack_bot), should be released. 
 

## Supporting the project
   We believe that everyone deserves access to reliable, science-based knowledge. That's why we keep our code open and accessible to all, no matter their location or financial situation. By doing this, we empower more people to educate themselves and contribute to global wellbeing. Unlike major corporations, we are not backed by billionaire owners; our work is entirely powered by your generosity. Your donations are essential in keeping our project open and available to everyone. Every contribution, no matter the size, has a significant impact on the future of TBpack. If our work has benefited you, please consider [making a donation](https://paypal.me/vasilsaroka?locale.x=en_GB). Together, we can make a difference. 
