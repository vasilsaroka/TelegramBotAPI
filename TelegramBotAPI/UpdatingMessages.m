(* Wolfram Language Package *)

BeginPackage["TelegramBotAPI`UpdatingMessages`"]

Unprotect[Evaluate[$Context<>"*"]];


(* Exported symbols added here with SymbolName::usage *)  

editMessageText::usage = "editMessageText[\!\(\*RowBox[{StyleBox[\"text\",\"TI\"], \",\" , StyleBox[\"options\",\"TI\"]}]\)] edits text and game messages using \!\(\*StyleBox[\"text\",\"TI\"]\) as a message and applying specified \!\(\*StyleBox[\"options\",\"TI\"]\).
editMessageText[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"ChatId\", \"\[Rule]\", StyleBox[\"chatid\",\"TI\"], \",\" ,\"MessageId\", \"\[Rule]\", StyleBox[\"integer\",\"TI\"]}]\)] edits the text in the message specified by \!\(\*StyleBox[\"integer\",\"TI\"]\) in the chat defined by \!\(\*StyleBox[\"chatid\",\"TI\"]\).
editMessageText[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"BusinessConnectionId\", \"\[Rule]\", StyleBox[\"string\",\"TI\"]}]\)] edits the text message sent on behalf of the business connection specified by \!\(\*StyleBox[\"string\",\"TI\"]\).
editMessageText[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"InlineMessageId\", \"\[Rule]\", StyleBox[\"string\",\"TI\"]}]\)] edits the text message specified by the inline message identifier \!\(\*StyleBox[\"string\",\"TI\"]\).
editMessageText[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" , \"ParseMode\", \"\[Rule]\", StyleBox[\"string\",\"TI\"]}]\)] edits the text message using parse mode specified by \!\(\*StyleBox[\"string\",\"TI\"]\).
editMessageText[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"Entities\", \"\[Rule]\", StyleBox[\"list\",\"TI\"]}]\)] edits the text message with special entities that appear in \!\(\*StyleBox[\"list\",\"TI\"]\).
editMessageText[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"LinkPreviewOptions\", \"\[Rule]\", StyleBox[\"list\",\"TI\"]}]\)] edits the text message with a JSON-serialized \!\(\*StyleBox[\"list\",\"TI\"]\) of described options used for link preview generation.
editMessageText[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"ReplyMarkup\", \"\[Rule]\", StyleBox[\"object\",\"TI\"]}]\)] edits the text message with an inline keyboard, custom reply keyboard, instructions to remove reply keyboard or to force a reply from the user as described in a JSON-serialized \!\(\*StyleBox[\"object\",\"TI\"]\).
editMessageText[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" , \"\\\"BotToken''\", \"\[Rule]\", StyleBox[\"bottoken\",\"TI\"]}]\)] edits the text message in the bot specified by \!\(\*StyleBox[\"bottoken\",\"TI\"]\); default is an empty \!\(\*StyleBox[\"$BotToken\",\"TI\"]\) constant that can be set to a desired value to avoid using this option every time.
\!\(\*TemplateBox[{\"Read on Telegram Bot API webpage\", \"https://core.telegram.org/bots/api#editmessagetext\"}, \"HyperlinkURL\"]\)";

editMessageReplyMarkup::usage = "editMessageReplyMarkup[\!\(\*RowBox[{StyleBox[\"options\",\"TI\"]}]\)] edits only the reply markup of messages applying \!\(\*StyleBox[\"options\",\"TI\"]\) specified.
editMessageReplyMarkup[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"ChatId\", \"\[Rule]\", StyleBox[\"chatid\",\"TI\"], \",\" ,\"MessageId\", \"\[Rule]\", StyleBox[\"integer\",\"TI\"]}]\)] edits the reply markup of the message specified by \!\(\*StyleBox[\"integer\",\"TI\"]\) in the chat defined by \!\(\*StyleBox[\"chatid\",\"TI\"]\).
editMessageReplyMarkup[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"BusinessConnectionId\", \"\[Rule]\", StyleBox[\"string\",\"TI\"]}]\)] edits the reply markup in the message sent on behalf of the business connection specified by \!\(\*StyleBox[\"string\",\"TI\"]\).
editMessageReplyMarkup[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"InlineMessageId\", \"\[Rule]\", StyleBox[\"string\",\"TI\"]}]\)] edits the reply markup in the message specified by the inline message indentifier \!\(\*StyleBox[\"string\",\"TI\"]\).
editMessageReplyMarkup[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"ReplyMarkup\", \"\[Rule]\", StyleBox[\"object\",\"TI\"]}]\)] edits the reply markup in the message with an inline keyboard, custom reply keyboard, instructions to remove reply keyboard or to force a reply from the user as described in a JSON-serialized \!\(\*StyleBox[\"object\",\"TI\"]\).
editMessageReplyMarkup[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" , \"\\\"BotToken''\", \"\[Rule]\", StyleBox[\"bottoken\",\"TI\"]}]\)] edits the reply markup of a message in the bot specified by \!\(\*StyleBox[\"bottoken\",\"TI\"]\); default is an empty \!\(\*StyleBox[\"$BotToken\",\"TI\"]\) constant that can be set to a desired value to avoid using this option every time.
\!\(\*TemplateBox[{\"Read on Telegram Bot API webpage\", \"https://core.telegram.org/bots/api#editmessagereplymarkup\"}, \"HyperlinkURL\"]\)";

deleteMessage::usage = "deleteMessage[\!\(\*RowBox[{StyleBox[\"chatid\",\"TI\"], \",\" , StyleBox[\"messageid\",\"TI\"]}]\)] deletes a message specified by an integer or a string \!\(\*StyleBox[\"chatid\",\"TI\"]\) and an integer \!\(\*StyleBox[\"messageid\",\"TI\"]\), including service messages, with the following \!\(\*TemplateBox[{\"limitaitons\", \"https://core.telegram.org/bots/api#deletemessage\"}, \"HyperlinkURL\"]\).
deleteMessage[\!\(\*RowBox[{StyleBox[\"chatid\",\"TI\"], \",\" , StyleBox[\"messageid\",\"TI\"], \",\" , StyleBox[\"option\",\"TI\"]}]\)] deletes the message accounting for specified \!\(\*StyleBox[\"option\",\"TI\"]\). 
deleteMessage[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" , \"\\\"BotToken''\", \"\[Rule]\", StyleBox[\"bottoken\",\"TI\"]}]\)] deletes the message in the bot specified by \!\(\*StyleBox[\"bottoken\",\"TI\"]\); default is an empty \!\(\*StyleBox[\"$BotToken\",\"TI\"]\) constant that can be set to a desired value to avoid using this option every time.
\!\(\*TemplateBox[{\"Read on Telegram Bot API webpage\", \"https://core.telegram.org/bots/api#deletemessage\"}, \"HyperlinkURL\"]\)";


(* Options *)
ChatId::usage = "An option in fucntions such as \!\(\*StyleBox[\"editMessageText\",\"TI\"]\). It is required if \!\(\*StyleBox[\"InlineMessageId\",\"TI\"]\) is not specified. Unique identifier for the target chat or username of the target channel (in the format \!\(\*StyleBox[\"@channelusername\",\"TI\"]\)) must be either an integer or a string.";
MessageId::usage = "An option in fucntions such as \!\(\*StyleBox[\"editMessageText\",\"TI\"]\). It is required if \!\(\*StyleBox[\"InlineMessageId\",\"TI\"]\) is not specified. Identifier of the message to edit must be an integer.";
InlineMessageId::usage = "An option in fucntions such as \!\(\*StyleBox[\"editMessageText\",\"TI\"]\). It is required if \!\(\*StyleBox[\"ChatId\",\"TI\"]\) and \!\(\*StyleBox[\"MessageId\",\"TI\"]\) are not specified. Identifier of the inline message must be a string.";



Begin["`Private`"] (* Begin Private Context *) 

editMessageText::err = "Error code: `1`; Description: `2`";
Options[editMessageText] = {
   BusinessConnectionId -> "",
   ChatId -> "",
   MessageId -> 0,
   InlineMessageId -> "",
   ParseMode -> "",
   Entities -> "",
   LinkPreviewOptions -> "",
   ReplyMarkup -> "",
   "BotToken" -> TelegramBotAPI`$BotToken
   };
editMessageText[text_?StringQ, OptionsPattern[]] := Catch[Block[
    {
     apiurl, assoc, res
     },
    apiurl = URL[StringJoin[TelegramBotAPI`$TelegramURL, "bot", OptionValue["BotToken"], "/", "editMessageText"]];
    
    assoc = Association[
      Method -> "POST",
      "ContentType" -> Automatic,
      "Body" -> {
      	"business_connection_id" -> ToString[OptionValue[BusinessConnectionId]],
        "chat_id" -> OptionValue[ChatId],
        "message_id" -> OptionValue[MessageId],
        "inline_message_id" -> OptionValue[InlineMessageId],
        "text" -> text,
        "parse_mode" -> OptionValue[ParseMode],
        "entities" -> OptionValue[Entities],
        "link_preview_options" -> OptionValue[LinkPreviewOptions],
        "reply_markup" -> OptionValue[ReplyMarkup]
        }];
    
    res = URLExecute[HTTPRequest[apiurl, assoc]];
    If[
     	Lookup[res, "ok"],
     	res,
     	Message[editMessageText::err, Lookup[res, "error_code"], Lookup[res, "description"]];
     	Throw[$Failed]
     ]
    ](* end Block *)](* end Catch *);
SyntaxInformation[editMessageText] = {"ArgumentsPattern" -> {_,OptionsPattern[]}};



(* updated with "ContentType" -> "application/json", "Body" -> ExportString[...,"JSON"];
all ToString[] functions within ExportString[] are removed *)
editMessageReplyMarkup::err = "Error code: `1`; Description: `2`";
Options[editMessageReplyMarkup] = {
   BusinessConnectionId -> "",
   ChatId -> 0,
   MessageId -> 0,
   InlineMessageId -> "",
   ReplyMarkup -> "",
   "BotToken" -> TelegramBotAPI`$BotToken
   };
editMessageReplyMarkup[OptionsPattern[]] := Catch[Block[
   {
    apiurl, assoc, res
    },
   apiurl = URL[StringJoin[TelegramBotAPI`$TelegramURL, "bot", OptionValue["BotToken"], "/", "editMessageReplyMarkup"]];
   
   assoc = Association[
     Method -> "POST",
     "ContentType" -> "application/json",
     "Body" -> ExportString[{
       "business_connection_id" -> OptionValue[BusinessConnectionId],
       "chat_id" -> OptionValue[ChatId],
       "message_id" -> OptionValue[MessageId],
       "inline_message_id" -> OptionValue[InlineMessageId],
       "reply_markup" -> OptionValue[ReplyMarkup]
       }, "JSON"]
   ];
   res = URLExecute[HTTPRequest[apiurl, assoc]];
   If[
     	Lookup[res, "ok"],
     	res,
     	Message[editMessageReplyMarkup::err, Lookup[res, "error_code"], Lookup[res, "description"]];
     	Throw[$Failed]
    ]
   ](* end Block *)](* end Catch *);
SyntaxInformation[editMessageText] = {"ArgumentsPattern" -> {OptionsPattern[]}};




deleteMessage::err = "Error code: `1`; Description: `2`";
Options[deleteMessage] = {
   "BotToken" -> TelegramBotAPI`$BotToken
   };
deleteMessage[chatId_?(StringQ[#] || IntegerQ[#] &), messageId_?IntegerQ] := Catch[Block[
    {
     apiurl, assoc, res
     },
    apiurl = URL[StringJoin[TelegramBotAPI`$TelegramURL, "bot", OptionValue["BotToken"], "/", "deleteMessage"]];
    
    assoc = Association[
      Method -> "POST",
      "ContentType" -> "application/json",
      "Body" -> ExportString[{
        "chat_id" -> chatId,
        "message_id" -> messageId
        }, "JSON"]
    ];
    
    res = URLExecute[HTTPRequest[apiurl, assoc]];
    If[
     	Lookup[res, "ok"],
     	res,
     	Message[deleteMessage::err, Lookup[res, "error_code"], Lookup[res, "description"]];
     	Throw[$Failed];
     ]
    ](* end Block *)];
SyntaxInformation[deleteMessage] = {"ArgumentsPattern" -> {_,_}};


End[] (* End Private Context *)

(Attributes[#] = {Protected, ReadProtected}) & /@ Names[Evaluate[$Context<>"*"]]

EndPackage[]