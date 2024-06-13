(* Wolfram Language Package *)

BeginPackage["TelegramBotAPI`AvailableMethods`"]
(* Exported symbols added here with SymbolName::usage *)

sendMessage::usage = "sendMessage[\!\(\*RowBox[{StyleBox[\"chatid\",\"TI\"],\",\" , StyleBox[\"text\",\"TI\"]}]\)] sends \!\(\*StyleBox[\"text\",\"TI\"]\) as a message to the chat specified by \!\(\*StyleBox[\"chatid\",\"TI\"]\).
sendMessage[\!\(\*RowBox[{StyleBox[\"chatid\",\"TI\"],\",\" , StyleBox[\"text\",\"TI\"], \",\" , StyleBox[\"options\",\"TI\"]}]\)] sends text message \!\(\*StyleBox[\"text\",\"TI\"]\) with specified \!\(\*StyleBox[\"options\",\"TI\"]\).
sendMessage[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"MessageThreadId\", \"\[Rule]\", StyleBox[\"integer\",\"TI\"]}]\)] sends a text message to the message thread specified by \!\(\*StyleBox[\"integer\",\"TI\"]\).
sendMessage[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" , \"ParseMode\", \"\[Rule]\", StyleBox[\"string\",\"TI\"]}]\)] sends a text message using parse mode specified by \!\(\*StyleBox[\"string\",\"TI\"]\).
sendMessage[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"Entities\", \"\[Rule]\", StyleBox[\"list\",\"TI\"]}]\)] sends a text message with special entities that appear in \!\(\*StyleBox[\"list\",\"TI\"]\).
sendMessage[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"LinkPreviewOptions\", \"\[Rule]\", StyleBox[\"list\",\"TI\"]}]\)] sends a text message with a JSON-serialized \!\(\*StyleBox[\"list\",\"TI\"]\) of described options used for link preview generation.
sendMessage[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"DisableNotifications\", \"\[Rule]\", StyleBox[\"True\",\"TI\"]}]\)] sends a text message silently so that a user receives notification without sound.
sendMessage[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"ProtectContent\", \"\[Rule]\", StyleBox[\"True\",\"TI\"]}]\)] sends a text message protecting it from forwarding and saving.
sendMessage[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"ReplyParameters\", \"\[Rule]\", StyleBox[\"list\",\"TI\"]}]\)] sends a text message with reply parameters described in a JSON-serialized \!\(\*StyleBox[\"list\",\"TI\"]\).
sendMessage[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"ReplyMarkup\", \"\[Rule]\", StyleBox[\"object\",\"TI\"]}]\)] sends a text message with an inline keyboard, custom reply keyboard, instructions to remove reply keyboard or to force a reply from the user as described in a JSON-serialized \!\(\*StyleBox[\"object\",\"TI\"]\).
sendMessage[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" , \"\\\"BotToken''\", \"\[Rule]\", StyleBox[\"bottoken\",\"TI\"]}]\)] sends a text message to the bot specified by \!\(\*StyleBox[\"bottoken\",\"TI\"]\).";

answerCallbackQuery::usage = "answerCallbackQuery[\!\(\*RowBox[{StyleBox[\"callbackqueryid\",\"TI\"]}]\)] sends an answer to callback query specified by \!\(\*StyleBox[\"callbackqueryid\",\"TI\"]\) sent from inline keyboards.
answerCallbackQuery[\!\(\*RowBox[{StyleBox[\"callbackqueryid\",\"TI\"], \",\" , StyleBox[\"options\",\"TI\"]}]\)] sends the answer with specified \!\(\*StyleBox[\"options\",\"TI\"]\).
answerCallbackQuery[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"Text\", \"\[Rule]\", StyleBox[\"string\",\"TI\"]}]\)] sends the answer that displayed to the user as a notification at the top of the chat screen.
answerCallbackQuery[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" , \"ShowAlert\", \"\[Rule]\", StyleBox[\"True\",\"TI\"]}]\)] sends the answer with an alert shown by the client instead of a notification.
answerCallbackQuery[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"URL\", \"\[Rule]\", StyleBox[\"string\",\"TI\"]}]\)] sends the answer with \!\(\*StyleBox[\"string\",\"TI\"]\) URL being opened by the user's client.
answerCallbackQuery[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"CacheTime\", \"\[Rule]\", StyleBox[\"integer\",\"TI\"]}]\)] sends the answer with the result of the callback query being cached client-side for \!\(\*StyleBox[\"integer\",\"TI\"]\) seconds.
answerCallbackQuery[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" , \"\\\"BotToken''\", \"\[Rule]\", StyleBox[\"bottoken\",\"TI\"]}]\)] sends the answer to the bot specified by \!\(\*StyleBox[\"bottoken\",\"TI\"]\).";


(* Options *)
BusinessConnectionId::usage = "An option for a unique identifier of the business connection on behalf of which the message will be sent.";
MessageThreadId::usage = "An option for a unique identifier for the target message thread (topic) of the forum; for forum supergroups only.";
ParseMode::usage = "An option choosing mode for parsing entities in the message text such as MarkdownV2, HTML or Markdown styles.";
Entities::usage = "An option which can be specified instead of ParseMode. It takes a JSON-serialized list of special entities that must appear in message text.";
LinkPreviewOptions::usage = "An option to provide link preview generation options for the message. It takes a JSON-serialized list.";
DisableNotification::usage = "A boolean option to send the message silently. Users will receive a notification with no sound.";
ProtectContent::usage = "A boolean option that protects the contents of the sent message from forwarding and saving.";
ReplyParameters::usage = "An option containing the description of the message to reply to as a JSON-serialized list.";
ReplyMarkup::usage = "An option for additional interface options. A JSON-serialized object for an inline keyboard, custom reply keyboard, instructions to remove reply keyboard or to force a reply from the user.";

Text::usage = "In Telegram Bot API` context, an option for a text notificaiton in answerCallbackQuery.  If not specified, nothing will be shown to the user, 0-200 characters.";
ShowAlert::usage = "An option in answerCallbackQuery. If \!\(\*StyleBox[\"True\",\"TI\"]\), an alert will be shown by the client instead of a notification at the top of the chat screen. Defaults to \!\(\*StyleBox[\"False\",\"TI\"]\).";
URL::usage = "In Telegram Bot API` context, URL that will be opened by the user's client.";
CacheTime::usage = "An option specifying the maximum amount of time in seconds that the result of the callback query may be cached client-side. Telegram apps will support caching starting in version 3.14. Defaults to 0.";


  

Begin["`Private`"] (* Begin Private Context *) 

sendMessage::err = "Error code: `1`; Description: `2`";
Options[sendMessage] = {
   BusinessConnectionId->"",
   MessageThreadId -> 0,
   ParseMode -> "",
   Entities -> "",
   LinkPreviewOptions -> "",
   DisableNotification -> False,
   ProtectContent -> False,
   ReplyParameters -> "",
   ReplyMarkup -> "",
   "BotToken" -> TelegramBotAPI`$BotToken
   };
sendMessage[chatid_?(StringQ[#] || IntegerQ[#] &), text_?StringQ, 
   OptionsPattern[]] := Catch[Block[
    {
     businessconnectionid = OptionValue[BusinessConnectionId],
     messagethreadid = OptionValue[MessageThreadId],
     parsemode = OptionValue[ParseMode],
     entities = OptionValue[Entities],
     linkpreviewoptions = OptionValue[LinkPreviewOptions],
     disablenotification = OptionValue[DisableNotification],
     protectcontent = OptionValue[ProtectContent],
     replyparameters = OptionValue[ReplyParameters],
     replymarkup = OptionValue[ReplyMarkup],
     bottoken = OptionValue["BotToken"],
     apiurl,
     assoc, res
     },
    apiurl = 
     URL[StringJoin[TelegramBotAPI`$TelegramURL, "bot", bottoken, "/", 
       "sendMessage"]];
    
    assoc = Association[
      Method -> "POST",
      "ContentType" -> Automatic,
      "Body" -> {
        "chat_id" -> chatid,
        "text" -> text,
        "business_connection_id" -> ToString[businessconnectionid],
        "message_thread_id" -> messagethreadid,
        "parse_mode" -> parsemode,
        "entities" -> entities,
        "link_preview_options" -> linkpreviewoptions,
        "disable_notification" -> ToString[disablenotification],
        "protect_content" -> ToString[protectcontent],
        "reply_parameters" -> replyparameters,
        "reply_markup" -> replymarkup
        }];
    res = URLExecute[HTTPRequest[apiurl, assoc]];
    If[
     	Lookup[res, "ok"],
     	res,
     	Message[sendMessage::err, Lookup[res, "error_code"], 
      Lookup[res, "description"]];
     	Throw[$Failed]
     ]
    ](* end Block *)](* end Catch *);
SyntaxInformation[sendMessage] = {"ArgumentsPattern" -> {_,_,OptionsPattern[]}};


Options[answerCallbackQuery] = {
   Text -> "",
   ShowAlert -> False,
   URL -> "",
   CacheTime -> 0,
   "BotToken" -> TelegramBotAPI`$BotToken
   };
answerCallbackQuery[callbackqueryid_?StringQ, OptionsPattern[]] := 
  Block[
   {
    text = OptionValue[Text],
    showalert = OptionValue[ShowAlert],
    url = OptionValue[URL],
    cachetime = OptionValue[CacheTime],
    bottoken = OptionValue["BotToken"],
    apiurl, assoc
    },
   apiurl = 
    URL[StringJoin[TelegramBotAPI`$TelegramURL, "bot", bottoken, "/", 
      "answerCallbackQuery"]];
   
   assoc = Association[
     Method -> "POST",
     "ContentType" -> Automatic,
     "Body" -> {
       "callback_query_id" -> callbackqueryid,
       "text" ->  text,
       "show_alert" -> ToString[showalert],
       "url" -> url,
       "cache_time" -> cachetime
       }];
   URLExecute[HTTPRequest[apiurl, assoc]]
   ](* end Block *);
SyntaxInformation[answerCallbackQuery] = {"ArgumentsPattern" -> {_,OptionsPattern[]}};




End[] (* End Private Context *)

EndPackage[]