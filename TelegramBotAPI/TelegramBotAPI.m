(* Wolfram Language Package *)

(* Created by the Wolfram Workbench Jan 26, 2024 *)

(* :Title: TelegramBotAPI for Bot API 7.1: https://core.telegram.org/bots/api#available-methods *)
(* :Author: Vasil A. Saroka <40.ovasil@gmail.com> *)
(* :Context: TelegramBotAPI` *)
(* :Version: 0.1.0 *)
(* :Date: 2022-02-20 *)

(* :Mathematica Version: 14.0+ *)
(* :Copyright: (c) 2024 Vasil A. Saroka *)

BeginPackage["TelegramBotAPI`",{"TelegramBotAPI`GettingUpdates`","TelegramBotAPI`AvailableMethods`","TelegramBotAPI`AvailableTypes`","TelegramBotAPI`UpdatingMessages`"}]
(* Exported symbols added here with SymbolName::usage *) 

(* for Functions *)
getChatId::usage = "getChatId[\!\(\*RowBox[{StyleBox[\"update\",\"TI\"]}]\)] returns chat id for the given \!\(\*StyleBox[\"update\",\"TI\"]\)."

getMessageId::usage = "getMessageId[\!\(\*RowBox[{StyleBox[\"update\",\"TI\"]}]\)] returns message id for the given \!\(\*StyleBox[\"update\",\"TI\"]\)."

getMessageText::usage = "getMessageText[\!\(\*RowBox[{StyleBox[\"update\",\"TI\"]}]\)] returns message text for the given \!\(\*StyleBox[\"update\",\"TI\"]\)."

JSONObject::usage = "JSONObject[\!\(\*RowBox[{StyleBox[\"list\",\"TI\"]}]\)] returns a serialized JSON object from the given \!\(\*StyleBox[\"list\",\"TI\"]\) of rules."

CallbackReply::usage = "CallbackReply[\!\(\*RowBox[{StyleBox[\"update\",\"TI\"]}]\)] applies \!\(\*StyleBox[\"answerCallbackQuery\",\"TI\"]\) Bot api to the given \!\(\*StyleBox[\"update\",\"TI\"]\) of \!\(\*StyleBox[\"callback_query\",\"TI\"]\) type and returns its \"message_id\" and \"chat\" \"id\" values."

MarkdownV2Format::usage = "MarkdownV2Format[\!\(\*RowBox[{StyleBox[\"string\",\"TI\"]}]\)] escapes special symbols in \!\(\*StyleBox[\"string\",\"TI\"]\) with the preceding character '\' as required by \"MarkdownV2\" style, see https://core.telegram.org/bots/api#formatting-options."

CallbackQueryQ::usage = "CallbackQueryQ[\!\(\*RowBox[{StyleBox[\"update\",\"TI\"]}]\)] returns \!\(\*StyleBox[\"True\",\"TI\"]\) if the \!\(\*StyleBox[\"update\",\"TI\"]\) is of \!\(\*StyleBox[\"callback_query\",\"TI\"]\) type and \!\(\*StyleBox[\"False\",\"TI\"]\) otherwise."

MessageQ::usage = "MessageQ[\!\(\*RowBox[{StyleBox[\"update\",\"TI\"]}]\)] returns \!\(\*StyleBox[\"True\",\"TI\"]\) if the \!\(\*StyleBox[\"update\",\"TI\"]\) is of \!\(\*StyleBox[\"message\",\"TI\"]\) type and \!\(\*StyleBox[\"False\",\"TI\"]\) otherwise."


(* Options *)

(* Constants *)
$TelegramURL::usage = "URL for all queries to the Telegram Bot API."
$BotToken::usage = "Default value of \"BotToken\" option for funtions like getUpdates, sendMessage, etc."

$PreCodeRules::usage = "Inside pre and code entities, all '`'  and '\' characters must be escaped with a preceding '\' character."
$LinkRules::usage = "Inside (...) part of inline link definition, all ')' and '\' must be escaped with a preceding '\' character."
$SpecialCharacterRules::usage = "In all places other than \!\(\*StyleBox[\"$PreCodeRules\",\"TI\"]\) and \!\(\*StyleBox[\"$LinkRules\",\"TI\"]\) characters '_', '*', '[', ']', '(', ')', '~', '`', '>', '#', '+', '-', '=', '|', '{', '}', '.', '!' must be escaped with the preceding character '\'."



Begin["`Private`"]
(* Implementation of the package *)

$TelegramURL = "https://api.telegram.org/";
$BotToken = "";

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

getMessageText::err = 
  "The update `1` is nether a message nor a callback.";
getMessageText[update_] := Catch[Switch[
    True,
    MessageQ[update], Fold[Lookup, update, {"message", "text"}],
    CallbackQueryQ[update], 
    Fold[Lookup, update, {"callback_query", "message", "text"}],
    _, Message[getMessageText::err, update]; Throw[$Failed]
    ](* end Switch *)](* end Catch *);
    
JSONObject[listofrules_] := 
 ExportString[listofrules, "JSON", "Compact" -> True]
 
 
CallbackReply[update_?CallbackQueryQ] := Block[
   {
    callbackqueryId,
    messageId, chatId
    },
   callbackqueryId = Fold[Lookup, update, {"callback_query", "id"}];
   answerCallbackQuery[callbackqueryId];
   messageId = 
    Fold[Lookup, 
     update, {"callback_query", "message", "message_id"}];
   chatId = 
    Fold[Lookup, 
     update, {"callback_query", "message", "chat", "id"}];
   {messageId, chatId}
   ](* end Block *);


MarkdownV2Format = 
  StringReplace[#, 
    Join[$SpecialCharacterRules, $LinkRules, $PreCodeRules]] &;


CallbackQueryQ[update_] := SameQ[update[[2, 1]], "callback_query"];

MessageQ[update_] := SameQ[update[[2, 1]], "message"];



End[]

EndPackage[]

