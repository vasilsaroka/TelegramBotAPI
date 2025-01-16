(* Wolfram Language Package *)

(* Created by the Wolfram Workbench Jan 26, 2024 *)

(* :Title: TelegramBotAPI for Bot API 8.2: https://core.telegram.org/bots/api#january-1-2025 *)
(* :Author: Vasil A. Saroka <40.ovasil@gmail.com> *)
(* :Context: TelegramBotAPI` *)
(* :Version: 0.2.0 *)
(* :Date: 2025-01-16 *)

(* :Mathematica Version: 14.0+ *)
(* :Copyright: (c) 2025 Vasil A. Saroka *)

BeginPackage["TelegramBotAPI`",{
	"TelegramBotAPI`GettingUpdates`",
	"TelegramBotAPI`AvailableMethods`",
	"TelegramBotAPI`AvailableTypes`",
	"TelegramBotAPI`UpdatingMessages`",
	"TelegramBotAPI`OpenAI`",
	"TelegramBotAPI`xAI`",
	"TelegramBotAPI`ElevenLabs`"
}]

Unprotect[Evaluate[$Context<>"*"]]; (* as in TBpack; note: it must be used for all subpackages *)


(* Exported symbols added here with SymbolName::usage *) 
(* Usage messages: use here String Representation of Boxes to get formatting similar to built-in functions *)
(* for Functions *)
getChatId::usage = "getChatId[\!\(\*RowBox[{StyleBox[\"update\",\"TI\"]}]\)] returns chat id for the given \!\(\*StyleBox[\"update\",\"TI\"]\)."
getMessageId::usage = "getMessageId[\!\(\*RowBox[{StyleBox[\"update\",\"TI\"]}]\)] returns message id for the given \!\(\*StyleBox[\"update\",\"TI\"]\)."
getMessageText::usage = "getMessageText[\!\(\*RowBox[{StyleBox[\"update\",\"TI\"]}]\)] returns message text for the given \!\(\*StyleBox[\"update\",\"TI\"]\)."
getReplyToMessageText::usage = "getReplyToMessageText[\!\(\*RowBox[{StyleBox[\"update\",\"TI\"]}]\)] returns reply to message text for the given \!\(\*StyleBox[\"update\",\"TI\"]\)."
JSONObject::usage = "JSONObject[\!\(\*RowBox[{StyleBox[\"list\",\"TI\"]}]\)] returns a serialized JSON object from the given \!\(\*StyleBox[\"list\",\"TI\"]\).
JSONObject[\!\(\*RowBox[{StyleBox[\"list\",\"TI\"], \",\" ,  \"\\\"Emojies''\" , \"\[Rule]\", StyleBox[\"True\",\"TI\"]}]\)] returns a serialized JSON object from the given \!\(\*StyleBox[\"list\",\"TI\"]\) handling emojies in button texts of InlineKeyboardMarkup[\[Ellipsis]] when it accompany media send as url or file_id, i.e. not as a File[\[Ellipsis]]; somewhat artificial construct that might be related to a bug in ExportString[\[Ellipsis],\"JSON\"]."
CallbackReply::usage = "CallbackReply[\!\(\*RowBox[{StyleBox[\"update\",\"TI\"]}]\)] applies \!\(\*StyleBox[\"answerCallbackQuery\",\"TI\"]\) Bot api to the given \!\(\*StyleBox[\"update\",\"TI\"]\) of \!\(\*StyleBox[\"callback_query\",\"TI\"]\) type and returns its \"message_id\" and \"chat\" \"id\" values."
MarkdownV2Format::usage = "MarkdownV2Format[\!\(\*RowBox[{StyleBox[\"string\",\"TI\"]}]\)] escapes special symbols in \!\(\*StyleBox[\"string\",\"TI\"]\) with the preceding character '\' as required by \"MarkdownV2\" style. It uses replacement substitutions from \!\(\*StyleBox[\"$SpecialCharacterRules\",\"TI\"]\), \!\(\*StyleBox[\"$LinkRules\",\"TI\"]\), and \!\(\*StyleBox[\"$PreCodeRules\",\"TI\"]\), which can be reset or updated to adjust behaviour of the function if needed.
\!\(\*TemplateBox[{\"Read on Telegram Bot API webpage\", \"https://core.telegram.org/bots/api#markdownv2-style\"}, \"HyperlinkURL\"]\)"
CallbackQueryQ::usage = "CallbackQueryQ[\!\(\*RowBox[{StyleBox[\"update\",\"TI\"]}]\)] returns \!\(\*StyleBox[\"True\",\"TI\"]\) if the \!\(\*StyleBox[\"update\",\"TI\"]\) is of \!\(\*StyleBox[\"callback_query\",\"TI\"]\) type and \!\(\*StyleBox[\"False\",\"TI\"]\) otherwise."
MessageQ::usage = "MessageQ[\!\(\*RowBox[{StyleBox[\"update\",\"TI\"]}]\)] returns \!\(\*StyleBox[\"True\",\"TI\"]\) if the \!\(\*StyleBox[\"update\",\"TI\"]\) is of \!\(\*StyleBox[\"message\",\"TI\"]\) type and \!\(\*StyleBox[\"False\",\"TI\"]\) otherwise."
MessageTypeQ::usage = "MessageTypeQ[\!\(\*RowBox[{StyleBox[\"update\",\"TI\"], \",\", StyleBox[\"messagetype\",\"TI\"]}]\)] returns \!\(\*StyleBox[\"True\",\"TI\"]\) if the \!\(\*StyleBox[\"update\",\"TI\"]\) is of \!\(\*StyleBox[\"messagetype\",\"TI\"]\) type and \!\(\*StyleBox[\"False\",\"TI\"]\) otherwise." 
ReplyToMessageTypeQ::usage = "ReplyToMessageTypeQ[\!\(\*RowBox[{StyleBox[\"update\",\"TI\"], \",\", StyleBox[\"messagetype\",\"TI\"]}]\)] returns \!\(\*StyleBox[\"True\",\"TI\"]\) if the \!\(\*StyleBox[\"update\",\"TI\"]\) is of \!\(\*StyleBox[\"messagetype\",\"TI\"]\) type and \!\(\*StyleBox[\"False\",\"TI\"]\) otherwise."

VoiceMessageInfo::usage = "VoiceMessageInfo[\!\(\*RowBox[{StyleBox[\"update\",\"TI\"]}]\)] returns default information on a voice message from \!\(\*StyleBox[\"update\",\"TI\"]\).
VoiceMessageInfo[\!\(\*RowBox[{StyleBox[\"update\",\"TI\"], \",\", \"Properties\", \"\[Rule]\", StyleBox[\"list\",\"TI\"]}]\)] returns information on the voice message properties specified by \!\(\*StyleBox[\"list\",\"TI\"]\). Choose among \"duration\", \"mime_type\", \"file_id\", \"file_unique_id\", and \"file_size\".";
PhotoMessageInfo::usage = "PhotoMessageInfo[\!\(\*RowBox[{StyleBox[\"update\",\"TI\"], \",\", StyleBox[\"photovariant\",\"TI\"]}]\)] returns default information on \!\(\*StyleBox[\"photovariant\",\"TI\"]\) in a photo message given by \!\(\*StyleBox[\"update\",\"TI\"]\).
PhotoMessageInfo[\!\(\*RowBox[{StyleBox[\"update\",\"TI\"], \",\", StyleBox[\"photovariant\",\"TI\"], \",\", \"Properties\", \"\[Rule]\", StyleBox[\"list\",\"TI\"]}]\)] returns information on \!\(\*StyleBox[\"photovariant\",\"TI\"]\) properties specified by \!\(\*StyleBox[\"list\",\"TI\"]\). Choose among \"file_id\", \"file_unique_id\", \"file_size\", \"width\", and \"height\".";
VideoMessageInfo::usage = "VideoMessageInfo[\!\(\*RowBox[{StyleBox[\"update\",\"TI\"]}]\)] returns default information on a video message from \!\(\*StyleBox[\"update\",\"TI\"]\).
VideoMessageInfo[\!\(\*RowBox[{StyleBox[\"update\",\"TI\"], \",\", \"Properties\", \"\[Rule]\", StyleBox[\"list\",\"TI\"]}]\)] returns information on the video message properties specified by \!\(\*StyleBox[\"list\",\"TI\"]\). Choose among \"duration\", \"width\", \"height\", \"mime_type\", \"thumbnail\", \"thumb\", \"file_id\", \"file_unique_id\", and \"file_size\".";
DocumentMessageInfo::usage = "DocumentMessageInfo[\!\(\*RowBox[{StyleBox[\"update\",\"TI\"]}]\)] returns default information on a file shared in \!\(\*StyleBox[\"update\",\"TI\"]\).
DocumentMessageInfo[\!\(\*RowBox[{StyleBox[\"update\",\"TI\"], \",\", \"Properties\", \"\[Rule]\", StyleBox[\"list\",\"TI\"]}]\)] returns information on the file properties specified by \!\(\*StyleBox[\"list\",\"TI\"]\). Choose among \"file_name\", \"mime_type\", \"thumbnail\", \"thumb\", \"file_id\", \"file_unique_id\", and \"file_size\".";
LocationMessageInfo::usage = "LocationMessageInfo[\!\(\*RowBox[{StyleBox[\"update\",\"TI\"]}]\)] returns default information on a location shared in \!\(\*StyleBox[\"update\",\"TI\"]\).
LocationMessageInfo[\!\(\*RowBox[{StyleBox[\"update\",\"TI\"], \",\", \"Properties\", \"\[Rule]\", StyleBox[\"list\",\"TI\"]}]\)] returns information on location properties specified by \!\(\*StyleBox[\"list\",\"TI\"]\). Choose among \"latitude\" and \"longitude\".";
VenueMessageInfo::usage = "VenueMessageInfo[\!\(\*RowBox[{StyleBox[\"update\",\"TI\"]}]\)] returns default information on a venue shared in \!\(\*StyleBox[\"update\",\"TI\"]\).
VenueMessageInfo[\!\(\*RowBox[{StyleBox[\"update\",\"TI\"], \",\", \"Properties\", \"\[Rule]\", StyleBox[\"list\",\"TI\"]}]\)] returns information on the venue properties specified by \!\(\*StyleBox[\"list\",\"TI\"]\). Choose among \"location\", \"title\", \"address\", \"foursquare_id\", and \"foursquare_type\".";
AudioMessageInfo::usage = "AudioMessageInfo[\!\(\*RowBox[{StyleBox[\"update\",\"TI\"]}]\)] returns default information on an audio shared in \!\(\*StyleBox[\"update\",\"TI\"]\).
AudioMessageInfo[\!\(\*RowBox[{StyleBox[\"update\",\"TI\"], \",\", \"Properties\", \"\[Rule]\", StyleBox[\"list\",\"TI\"]}]\)] returns information on the audio properties specified by \!\(\*StyleBox[\"list\",\"TI\"]\). Choose among \"duration\", \"file_name\", \"mime_type\", \"title\", \"performer\", \"file_id\", \"file_unique_id\", and \"file_size\".";
ContactMessageInfo::usage = "ContactMessageInfo[\!\(\*RowBox[{StyleBox[\"update\",\"TI\"]}]\)] returns default information on a contact shared in \!\(\*StyleBox[\"update\",\"TI\"]\).
ContactMessageInfo[\!\(\*RowBox[{StyleBox[\"update\",\"TI\"], \",\", \"Properties\", \"\[Rule]\", StyleBox[\"list\",\"TI\"]}]\)] returns information on the contact properties specified by \!\(\*StyleBox[\"list\",\"TI\"]\). Choose among \"phone_number\", \"first_name\", and \"vcard\".";



(* Options *)

(* Constants *)
$TelegramBotAPIDirectory::usage = "$TelegramBotAPIDirectory gives directory where TelegramBotAPI.m file is located."
$TelegramBotAPIVersion::usage = "$TelegramBotAPIVersion returns version informaiton for both the Wolafram Language package and Telegram Bot API."
$TelegramURL::usage = "URL for all queries to the Telegram Bot API.
\!\(\*TemplateBox[{\"Read on Telegram Bot API webpage\", \"https://core.telegram.org/bots/api#making-requests\"}, \"HyperlinkURL\"]\)"
$BotToken::usage = "Default value of \"BotToken\" option for funtions like getUpdates, sendMessage, etc.
\!\(\*TemplateBox[{\"Read on Telegram Bot API webpage\", \"https://core.telegram.org/bots/api#authorizing-your-bot\"}, \"HyperlinkURL\"]\)"
$MIMETypesLink::usage = "Url to the webpage with information about MIME types."; 


$PreCodeRules::usage = "Inside pre and code entities, all '`'  and '\' characters must be escaped with a preceding '\' character in \"MarkdownV2\" style.
\!\(\*TemplateBox[{\"Read on Telegram Bot API webpage\", \"https://core.telegram.org/bots/api#markdownv2-style\"}, \"HyperlinkURL\"]\)"
$LinkRules::usage = "Inside (...) part of inline link definition, all ')' and '\' must be escaped with a preceding '\' character in \"MarkdownV2\" style.
\!\(\*TemplateBox[{\"Read on Telegram Bot API webpage\", \"https://core.telegram.org/bots/api#markdownv2-style\"}, \"HyperlinkURL\"]\)"
$SpecialCharacterRules::usage = "In all places other than \!\(\*StyleBox[\"$PreCodeRules\",\"TI\"]\) and \!\(\*StyleBox[\"$LinkRules\",\"TI\"]\) characters '_', '*', '[', ']', '(', ')', '~', '`', '>', '#', '+', '-', '=', '|', '{', '}', '.', '!' must be escaped with the preceding character '\' in \"MarkdownV2\" style.
\!\(\*TemplateBox[{\"Read on Telegram Bot API webpage\", \"https://core.telegram.org/bots/api#markdownv2-style\"}, \"HyperlinkURL\"]\)"



Begin["`Private`"]
(* Implementation of the package *)
$TelegramBotAPIDirectory = DirectoryName[$InputFileName];
$TelegramBotAPIVersion = "0.2.0 Wolfram Language package for 8.2 Telegram Bot API\n\!\(\*TemplateBox[{\"Go to Wolafrm Language package development repository on GitHub\", \"https://github.com/vasilsaroka/TelegramBotAPI\"}, \"HyperlinkURL\"]\)\n\!\(\*TemplateBox[{\"Go to Telegram Bot API webpage\", \"https://core.telegram.org/bots/api#january-1-2025\"}, \"HyperlinkURL\"]\)";

$TelegramURL = "https://api.telegram.org/";
(*Clear[$BotToken];*)
(*$BotToken is effectively set to itself so that it can be changed during the session and take an effect on all the functions,
where it is used as an option *)

$MIMETypesLink = "https://developer.mozilla.org/en-US/docs/Web/HTTP/MIME_types";

(* MarkdownV2 style rules *)
$PreCodeRules = {"`" -> "\\`", "\\" -> "\\\\"};
$LinkRules = {")" -> "\\)", "\\" -> "\\\\"};
$SpecialCharacterRules = {"_" -> "\\_","*" -> "\\*","[" -> "\\[","]" -> "\\]","(" -> "\\(",")" -> "\\)","~" -> "\\~","`" -> "\\`",">" -> "\\>","#" -> "\\#","+" -> "\\+","-" -> "\\-","=" -> "\\=","|" -> "\\|","{" -> "\\{","}" -> "\\}","." -> "\\.","!" -> "\\!"}; 



getChatId::err = "The update `1` is neither a message nor a callback.";
getChatId[update_] := Catch[Switch[
    True,
    MessageQ[update], 
    Fold[Lookup, update, {"message", "chat", "id"}],
    CallbackQueryQ[update], 
    Fold[Lookup, {update, "callback_query", "message", "chat", 
      "id"}],
    _,
    Message[getChatId::err, update]; Throw[$Failed]
    ](* end Switch *)](* end Catch *);
SyntaxInformation[getChatId] = {"ArgumentsPattern" -> {_}};

getMessageId::err = 
  "The update `1` is nether a message nor a callback.";
getMessageId[update_] := Catch[Switch[
    True,
    MessageQ[update], 
    Fold[Lookup, {update, "message", "message_id"}],
    CallbackQueryQ[update], 
    Fold[Lookup, {update, "callback_query", "message", 
      "message_id"}],
    _, Message[getMessageId::err, update]; Throw[$Failed]
    ](* end Switch *)](* end Catch *);
SyntaxInformation[getMessageId] = {"ArgumentsPattern" -> {_}};

getMessageText::err = "The update `1` is nether a message nor a callback.";
getMessageText[update_] := Catch[
	Switch[
    True,
    MessageQ[update], 
    Fold[Lookup, update, {"message", "text"}],
    CallbackQueryQ[update], 
    Fold[Lookup, update, {"callback_query", "message", "text"}],
    _, 
    Message[getMessageText::err, update];
    Throw[$Failed]
    ](* end Switch *)](* end Catch *);
SyntaxInformation[getMessageText] = {"ArgumentsPattern" -> {_}};

(* old version is called getSharedText *)
getReplyToMessageText::err = "The update `1` is nether a message nor a callback.";
getReplyToMessageText[update_] := Catch[
   Switch[
   True,
   CallbackQueryQ[update],
   Fold[Lookup, {update, "callback_query", "message", "reply_to_message", "text"}],
   MessageQ[update],
   Fold[Lookup, {update, "message", "text"}],
   _, 
   Message[getReplyToMessageText::err, update];
   Throw[$Failed]
   ](* end Switch *)](* end Catch *);
SyntaxInformation[getReplyToMessageText] = {"ArgumentsPattern" -> {_}};

    
(* Old definition:
JSONObject[listofrules_] := ExportString[listofrules, "JSON", "Compact" -> True];
*)

Options[JSONObject] = {"Emojies" -> False};
JSONObject[list_, OptionsPattern[]] := Block[
   {
    emojies = OptionValue["Emojies"],
    
    resu, subs, placeholder
    },
   If[
    emojies,
    (* this is needed to treat emojies in ReplyMarkup JSON objects, 
    when ContentType is different from "multipart/form-data";
    The input is implied to be a list of InlineKeyboardButton[] objects;
    This is not a good solution, but better than fixing it manualy in every single case *)
    {resu, subs} = Reap[
      list /. (Rule["text", a_]) :> (Rule["text", Sow[a, "A"]; 
          Sow[placeholder = ToString[Hash[a]], "B"]; placeholder])];
    StringReplace[ExportString[resu, "JSON"], 
     MapThread[Rule[#2, #1] &, subs]]
    ,
    (* can be used with an input that is a list of InlineKeyboardButton[] objects when ContentType is "multipart/form-data" *)
    ExportString[list, "JSON", "Compact" -> True]
    ](* end If *)
   ](* Block *);
SyntaxInformation[JSONObject] = {"ArgumentsPattern" -> {_,OptionsPattern[]}};
 
CallbackReply[update_?CallbackQueryQ] := Block[
   {
    callbackqueryId,
    messageId, chatId
    },
   callbackqueryId = Fold[Lookup, update, {"callback_query", "id"}];
   TelegramBotAPI`AvailableMethods`answerCallbackQuery[callbackqueryId];
   messageId = Fold[Lookup, update, {"callback_query", "message", "message_id"}];
   chatId = Fold[Lookup, update, {"callback_query", "message", "chat", "id"}];
   {messageId, chatId}
   ](* end Block *);
SyntaxInformation[CallbackReply] = {"ArgumentsPattern" -> {_}};


MarkdownV2Format = StringReplace[#, Join[$SpecialCharacterRules, $LinkRules, $PreCodeRules]] &;

CallbackQueryQ[update_] := SameQ[update[[2, 1]], "callback_query"];
SyntaxInformation[CallbackQueryQ] = {"ArgumentsPattern" -> {_}};

MessageQ[update_] := SameQ[update[[2, 1]], "message"];
SyntaxInformation[MessageQ] = {"ArgumentsPattern" -> {_}};

(* old version is called SharedMessageTypeQ *)
MessageTypeQ[update_, messagetype_?StringQ] := 
  SameQ[Head[Fold[Lookup, {update, "message", messagetype}]], 
   If[messagetype === "text", String, List]];
SyntaxInformation[MessageTypeQ] = {"ArgumentsPattern" -> {_,_}};

ReplyToMessageTypeQ[update_, messagetype_?StringQ] := 
  SameQ[Head[Fold[Lookup, {update, "callback_query", "message", "reply_to_message", messagetype}]], 
   If[messagetype === "text", String, List]];
SyntaxInformation[ReplyToMessageTypeQ] = {"ArgumentsPattern" -> {_,_}};


VoiceMessageInfo::err = "The update `1` is nether a message nor a callback.";
Options[VoiceMessageInfo] = {
   Properties -> {"duration", "mime_type", "file_id", "file_unique_id", "file_size"}
   };
VoiceMessageInfo[update_, OptionsPattern[]] := Catch[
	Switch[
	True,
    CallbackQueryQ[update],
    Fold[Lookup, {update, "callback_query", "message", "reply_to_message", "voice", OptionValue[Properties]}],
    MessageQ[update],
    Fold[Lookup, {update, "message", "voice", OptionValue[Properties]}],
    _, 
    Message[VoiceMessageInfo::err, update];
    Throw[$Failed]
    ](* end Switch *)](* end Catch *);
SyntaxInformation[VoiceMessageInfo] = {"ArgumentsPattern" -> {_,OptionsPattern[]}};


(* old name is SharedPhotoInfo *)
PhotoMessageInfo::err = "The update `1` is nether a message nor a callback.";
Options[PhotoMessageInfo] = {
   Properties -> {"file_id", "file_unique_id", "file_size", "width", "height"}
   };
PhotoMessageInfo[update_, photovariant_?IntegerQ, OptionsPattern[]] := Catch[Block[
   {
    properties = OptionValue[Properties],
    caption
    },
   Switch[
   	True,
    CallbackQueryQ[update],
    caption = Fold[Lookup, {update, "callback_query", "message", "reply_to_message", "caption"}];
    Append[Fold[Lookup, {update, "callback_query", "message", "reply_to_message", "photo", properties}][[photovariant]], If[MissingQ[caption], "", caption]],
    MessageQ[update],
    caption = Fold[Lookup, {update, "message", "caption"}];
    Append[Fold[Lookup, {update, "message", "photo", properties}][[photovariant]], If[MissingQ[caption], "", caption]],
    _, 
    Message[PhotoMessageInfo::err, update];
    Throw[$Failed]
    ](* end Switch *)
   ](* end Block *)](* end Catch *);
SyntaxInformation[PhotoMessageInfo] = {"ArgumentsPattern" -> {_,_,OptionsPattern[]}};


(* old name is SharedVideoInfo *)
VideoMessageInfo::err = "The update `1` is nether a message nor a callback.";
Options[VideoMessageInfo] = {
   Properties -> {"duration", "width", "height", "mime_type", "thumbnail", "thumb", "file_id", "file_unique_id", "file_size"}
   };
VideoMessageInfo[update_, OptionsPattern[]] := Catch[Block[
   {
    properties = OptionValue[Properties],
    caption
    },
   Switch[
   	True,
    CallbackQueryQ[update],
    caption = Fold[Lookup, {update, "callback_query", "message", "reply_to_message", "caption"}];
    Append[Fold[Lookup, {update, "callback_query", "message", "reply_to_message", "video", properties}], If[MissingQ[caption], "", caption]],
    MessageQ[update],
    caption = Fold[Lookup, {update, "message", "caption"}];
    Append[Fold[Lookup, {update, "message", "video", properties}], If[MissingQ[caption], "", caption]],
    _, 
    Message[VideoMessageInfo::err, update];
    Throw[$Failed]
    ](* end Switch *)
   ](* end Block*)](* end Catch *);
SyntaxInformation[VideoMessageInfo] = {"ArgumentsPattern" -> {_,OptionsPattern[]}};


(* old name is SharedFileInfo *)
DocumentMessageInfo::err = "The update `1` is nether a message nor a callback.";
Options[DocumentMessageInfo] = {
   Properties -> {"file_name", "mime_type", "thumbnail", "thumb", "file_id", "file_unique_id", "file_size"}
   };
DocumentMessageInfo[update_, OptionsPattern[]] := Catch[Block[
   {
    properties = OptionValue[Properties],
    caption
    },
   Switch[
   	True,
    CallbackQueryQ[update],
    caption =  Fold[Lookup, {update, "callback_query", "message", "reply_to_message", "caption"}];
    Append[Fold[Lookup, {update, "callback_query", "message", "reply_to_message", "document", properties}], If[MissingQ[caption], "", caption]],
    MessageQ[update],
    caption = Fold[Lookup, {update, "message", "caption"}];
    Append[Fold[Lookup, {update, "message", "document", properties}], If[MissingQ[caption], "", caption]],
    _, 
    Message[DocumentMessageInfo::err, update];
    Throw[$Failed]
    ](* end Switch *)
   ](* end Block *)](* end Catch *);
SyntaxInformation[DocumentMessageInfo] = {"ArgumentsPattern" -> {_,OptionsPattern[]}};


(* old name is SharedLocationInfo *)
LocationMessageInfo::err = "The update `1` is nether a message nor a callback.";
Options[LocationMessageInfo] = {
   Properties -> {"latitude", "longitude"}
   };
LocationMessageInfo[update_, OptionsPattern[]] := Catch[Block[
   {
    properties = OptionValue[Properties]
    },
   Switch[
   	True,
    CallbackQueryQ[update],
    Fold[Lookup, {update, "callback_query", "message", "reply_to_message", "location", properties}],
    MessageQ[update],
    Fold[Lookup, {update, "message", "location", properties}],
    _, 
    Message[LocationMessageInfo::err, update];
    Throw[$Failed]
    ](* end Switch *)
   ](* end Block *)](* end Catch *);
SyntaxInformation[LocationMessageInfo] = {"ArgumentsPattern" -> {_,OptionsPattern[]}};   

(* old name is SharedVenueInfo *)
VenueMessageInfo::err = "The update `1` is nether a message nor a callback.";
Options[VenueMessageInfo] = {
   Properties -> {"location", "title", "address", "foursquare_id", "foursquare_type"}
   };
VenueMessageInfo[update_, OptionsPattern[]] := Catch[Block[
   {
    properties = OptionValue[Properties]
    },
   Switch[
   	True,
    CallbackQueryQ[update],
    Fold[Lookup, {update, "callback_query", "message", "reply_to_message", "venue", properties}],
    MessageQ[update],
    Fold[Lookup, {update, "message", "venue", properties}],
    _, 
    Message[VenueMessageInfo::err, update];
    Throw[$Failed]
    ](* end Switch *)
   ](* end Block *)](* end Catch *);
SyntaxInformation[VenueMessageInfo] = {"ArgumentsPattern" -> {_,OptionsPattern[]}};   

(* old name is SharedAudioInfo *)
AudioMessageInfo::err = "The update `1` is nether a message nor a callback.";
Options[AudioMessageInfo] = {
   Properties -> {"duration", "file_name", "mime_type", "title", "performer", "file_id", "file_unique_id", "file_size"}
   };
AudioMessageInfo[update_, OptionsPattern[]] := Catch[Block[
   {
    properties = OptionValue[Properties],
    caption
    },
   Switch[
   	True,
    CallbackQueryQ[update],
    caption =  Fold[Lookup, {update, "callback_query", "message", "reply_to_message", "caption"}];
    Append[Fold[Lookup, {update, "callback_query", "message", "reply_to_message", "audio", properties}], If[MissingQ[caption], "", caption]],
    MessageQ[update],
    caption = Fold[Lookup, {update, "message", "caption"}];
    Append[Fold[Lookup, {update, "message", "audio", properties}], If[MissingQ[caption], "", caption]],
    _, 
    Message[AudioMessageInfo::err, update];
    Throw[$Failed]
    ](* end Switch *)
   ](* end Block *)](* end Catch *);
SyntaxInformation[AudioMessageInfo] = {"ArgumentsPattern" -> {_,OptionsPattern[]}};   


(* old name is SharedContactInfo *)
ContactMessageInfo::err = "The update `1` is nether a message nor a callback.";
Options[ContactMessageInfo] = {
   Properties -> {"phone_number", "first_name", "vcard"}
   };
ContactMessageInfo[update_, OptionsPattern[]] := Catch[Block[
   {
    properties = OptionValue[Properties]
    },
   Switch[
   	True,
    CallbackQueryQ[update],
    Fold[Lookup, {update, "callback_query", "message", "reply_to_message", "contact", properties}],
    MessageQ[update],
    Fold[Lookup, {update, "message", "contact", properties}],
     _, 
    Message[ContactMessageInfo::err, update];
    Throw[$Failed]
    ](* end Switch *)
   ](* end Block*)](* end Catch *);
SyntaxInformation[ContactMessageInfo] = {"ArgumentsPattern" -> {_,OptionsPattern[]}};   



End[]

(Attributes[#] = {Protected, ReadProtected}) & /@ Complement[Names[Evaluate[$Context<>"*"]], {"$TelegramURL","$BotToken","$PreCodeRules","$LinkRules", "$SpecialCharacterRules"}] 

EndPackage[]

