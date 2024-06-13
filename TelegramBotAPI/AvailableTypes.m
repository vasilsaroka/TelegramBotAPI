(* Wolfram Language Package *)

BeginPackage["TelegramBotAPI`AvailableTypes`"]
(* Exported symbols added here with SymbolName::usage *)
InlineKeyboardMarkup::usage = "InlineKeyboardMarkup[\!\(\*RowBox[{StyleBox[\"arrayofojbects\",\"TI\"]}]\)] represents array of button rows, each represented by an array of \!\(\*StyleBox[\"InlineKeyboardButton\",\"TI\"]\) objects.";
InlineKeyboardButton::usage = "InlineKeyboardButton[\!\(\*RowBox[{StyleBox[\"text\",\"TI\"]}]\)] is an object representing one button of an inline keyboard. It must use exactly one of the optional fields.
InlineKeyboardButton[\!\(\*RowBox[{StyleBox[\"text\",\"TI\"], \",\" , StyleBox[\"options\",\"TI\"]}]\)] is a button of an inline keyboard with specified \!\(\*StyleBox[\"options\",\"TI\"]\).
InlineKeyboardButton[\!\(\*RowBox[{StyleBox[\"text\",\"TI\"], \",\" ,\"URL\", \"\[Rule]\", StyleBox[\"url\",\"TI\"]}]\)] is a button with specified HTTP or tg:// \!\(\*StyleBox[\"url\",\"TI\"]\) to be opened when the button is pressed; for instance, tg://user?id=<user_id> if allowed by user's privacy settings.
InlineKeyboardButton[\!\(\*RowBox[{StyleBox[\"text\",\"TI\"], \",\" ,\"CallbackData\", \"\[Rule]\", StyleBox[\"string\",\"TI\"]}]\)] is a button with specified data in \!\(\*StyleBox[\"string\",\"TI\"]\) to be sent in a callback query.
InlineKeyboardButton[\!\(\*RowBox[{StyleBox[\"text\",\"TI\"], \",\" ,\"WebApp\", \"\[Rule]\", StyleBox[\"WebAppInfo\",\"TI\"]}]\)] is a button with specified \!\(\*StyleBox[\"WebAppInfo\",\"TI\"]\) description of the Web App that will be launched when the user presses the button.
InlineKeyboardButton[\!\(\*RowBox[{StyleBox[\"text\",\"TI\"], \",\" ,\"LoginURL\", \"\[Rule]\", StyleBox[\"LoginURL\",\"TI\"]}]\)] is a button with an HTTPS URL specifed in \!\(\*StyleBox[\"LoginURL\",\"TI\"]\) object used to automatically authorize the user.
InlineKeyboardButton[\!\(\*RowBox[{StyleBox[\"text\",\"TI\"], \",\" ,\"SwitchInlineQuery\", \"\[Rule]\", StyleBox[\"string\",\"TI\"]}]\)] is a button prompting the user to select one of their chats, where bot's name together with \!\(\*StyleBox[\"string\",\"TI\"]\) inline query will be inserted in the input field.
InlineKeyboardButton[\!\(\*RowBox[{StyleBox[\"text\",\"TI\"], \",\" ,\"SwitchInlineQueryCurrentChat\", \"\[Rule]\", StyleBox[\"string\",\"TI\"]}]\)] is a button inserting bot's name together with \!\(\*StyleBox[\"string\",\"TI\"]\) inline query in the input field of the current chat.
InlineKeyboardButton[\!\(\*RowBox[{StyleBox[\"text\",\"TI\"], \",\" ,\"SwitchInlineQueryChosenChat\", \"\[Rule]\", StyleBox[\"SwitchInlineQueryChosenChat\",\"TI\"]}]\)] is a button prompting the user to select one of their chats of the type specified in \!\(\*StyleBox[\"SwitchInlineQueryChosenChat\",\"TI\"]\) object.
InlineKeyboardButton[\!\(\*RowBox[{StyleBox[\"text\",\"TI\"], \",\" ,\"CallbackGame\", \"\[Rule]\", StyleBox[\"CallbackGame\",\"TI\"]}]\)] is a button launching the game described in \!\(\*StyleBox[\"CallbackGame\",\"TI\"]\) object.
InlineKeyboardButton[\!\(\*RowBox[{StyleBox[\"text\",\"TI\"], \",\" ,\"Pay\", \"\[Rule]\", StyleBox[\"True\",\"TI\"]}]\)] is a button representing a Pay button.";


(* Options *)
CallbackData::usage = "A string representing data to be sent in a callback query to the bot when button is pressed, 1-64 bytes.";
WebApp::usage = "An option containing WebAppInfo object with description of the Web App that will be launched when the user presses the button. The Web App will be able to send an arbitrary message on behalf of the user using the method \!\(\*StyleBox[\"answerWebAppQuery\",\"TI\"]\). Available only in private chats between a user and the bot.";
LoginURL::usage = "An option containing LoginURL object with a HTTPS URL used to automatically authorize the user.";
SwitchInlineQuery::usage = "An option which if set will prompt the user to select one of their chats, open that chat and insert the bot's username and the specified inline query in the input field. May be empty, in which case just the bot's username will be inserted.";
SwitchInlineQueryCurrentChat::usage = "An option which if set will insert the bot's username and the specified inline query in the current chat's input field. May be empty, in which case only the bot's username will be inserted.";
SwitchInlineQueryChosenChat::usage = "An option which if set will prompt the user to select one of their chats of the specified type, open that chat and insert the bot's username and the specified inline query in the input field.";
CallbackGame::usage = "An option with description of the game that will be launched when the user presses the button. NOTE: This type of button must always be the first button in the first row.";
Pay::usage = "A bollean option that if set to \!\(\*StyleBox[\"True\",\"TI\"]\) sends a Pay button; by default \!\(\*StyleBox[\"False\",\"TI\"]\). NOTE: This type of button must always be the first button in the first row and can only be used in invoice messages.";



Begin["`Private`"] (* Begin Private Context *) 

InlineKeyboardMarkup[arrayofobjects_] := {"inline_keyboard" -> arrayofobjects};
SyntaxInformation[InlineKeyboardMarkup] = {"ArgumentsPattern" -> {_}};

Options[InlineKeyboardButton] = {
   URL -> "",
   CallbackData -> "",
   WebApp -> "",
   LoginURL -> "",
   SwitchInlineQuery -> "",
   SwitchInlineQueryCurrentChat -> "",
   SwitchInlineQueryChosenChat -> "",
   CallbackGame -> "",
   Pay -> False
   };
(* warnings *)
InlineKeyboardButton::bytelim = 
  "The CallbackData string size `1` is too large. It must be limited to 1-64 bytes. In Mathematica the string size determined by ByteCount can be `2` bytes.";
InlineKeyboardButton[text_?StringQ,OptionsPattern[]] := Block[
   {
    url = OptionValue[URL],
    callbackdata = OptionValue[CallbackData],
    webapp = OptionValue[WebApp],
    loginurl = OptionValue[LoginURL],
    switchinlinequery = OptionValue[SwitchInlineQuery],
    switchinlinequerycurrentchat = OptionValue[SwitchInlineQueryCurrentChat],
    switchinlinequerychosenchat = OptionValue[SwitchInlineQueryChosenChat],
    callbackgame = OptionValue[CallbackGame],
    pay = OptionValue[Pay],
    
    callbackdatabytesize,
    callbackdatabytelimit = 88
    },
   callbackdatabytesize = ByteCount[callbackdata];
   If[callbackdatabytesize > callbackdatabytelimit, 
    Message[InlineKeyboardButton::bytelim, callbackdatabytesize, 
     callbackdatabytelimit]];
   {
    "text" -> text,
    "url" -> url,
    "callback_data" -> callbackdata,
    "web_app" -> webapp, 
    "login_url" -> loginurl,
    "switch_inline_query" -> switchinlinequery, 
    "switch_inline_query_current_chat" -> switchinlinequerycurrentchat,
    "switch_inline_query_chosen_chat" -> switchinlinequerychosenchat,
    "callback_game" -> callbackgame,
    "pay" -> pay
    }
   ](* end Block *);
SyntaxInformation[InlineKeyboardButton] = {"ArgumentsPattern" -> {_,OptionsPattern[]}};

End[] (* End Private Context *)

EndPackage[]