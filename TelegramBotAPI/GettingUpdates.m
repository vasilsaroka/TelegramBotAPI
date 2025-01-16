(* Wolfram Language Package *)

BeginPackage["TelegramBotAPI`GettingUpdates`"]

Unprotect[Evaluate[$Context<>"*"]];


(* Exported symbols added here with SymbolName::usage *)  

getUpdates::usage = "getUpdates[] returns a list of updates from the bot specified by \!\(\*StyleBox[\"$BotToken\",\"TI\"]\).
getUpdates[\!\(\*RowBox[{StyleBox[\"options\",\"TI\"]}]\)] returns a list of updates from the given bot accounting for specified \!\(\*StyleBox[\"options\",\"TI\"]\).
getUpdates[\!\(\*RowBox[{\"Offset\", \"\[Rule]\", StyleBox[\"value\",\"TI\"]}]\)] returns a list of updates from the given bot with the set Offset.
getUpdates[\!\(\*RowBox[{\"Limit\", \"\[Rule]\", StyleBox[\"value\",\"TI\"]}]\)] returns a list of updates from the given bot with the set Limit.
getUpdates[\!\(\*RowBox[{\"Timeout\", \"\[Rule]\", StyleBox[\"value\",\"TI\"]}]\)] returns a list of updates from the given bot with the set Timeout.
getUpdates[\!\(\*RowBox[{\"AllowedUpdates\", \"\[Rule]\", StyleBox[\"type\",\"TI\"]}]\)] returns a list of updates of the specified \!\(\*StyleBox[\"type\",\"TI\"]\).
getUpdates[\!\(\*RowBox[{\"\\\"BotToken''\", \"\[Rule]\", StyleBox[\"bottoken\",\"TI\"]}]\)] returns a list of updates for the bot specified by \!\(\*StyleBox[\"bottoken\",\"TI\"]\); default is an empty \!\(\*StyleBox[\"$BotToken\",\"TI\"]\) constant that can be set to a desired value to avoid using this option every time.
\!\(\*TemplateBox[{\"Read on Telegram Bot API webpage\", \"https://core.telegram.org/bots/api#getupdates\"}, \"HyperlinkURL\"]\)";


(* Options *)
Offset::usage = "In Telegram Bot API` context, an option setting an identifier of the first update to be returned by getUpdates. Must be greater by one than the highest among the identifiers of previously received updates. By default, updates starting with the earliest unconfirmed update are returned.";
Limit::usage = " In Telegram Bot API` context, an option limiting the number of updates to be retrieved by getUpdates. Values between 1-100 are accepted. Defaults to 100.";
Timeout::usage = "Timeout in seconds for long polling by getUpdates. Defaults to 0, i.e. usual short polling. Should be positive, short polling should be used for testing purposes only.";
AllowedUpdates::usage = "A JSON-serialized list of the update types you want your bot to receive with getUpdates. For example, specify [\"message\", \"edited_channel_post\", \"callback_query\"] to only receive updates of these types.";



Begin["`Private`"] (* Begin Private Context *) 

Options[getUpdates] = {
   Offset -> 0,
   Limit -> 100,
   Timeout -> 0,
   AllowedUpdates -> ""(* JSON-serialized list*),
   "BotToken" -> TelegramBotAPI`$BotToken
   };
getUpdates[OptionsPattern[]] := Block[
   {
    apiurl, assoc,
    request, result
    },
   apiurl = URL[StringJoin[TelegramBotAPI`$TelegramURL, "bot", OptionValue["BotToken"], "/", "getUpdates"]];
   
   assoc = Association[
     Method -> "GET",
     "ContentType" -> "application/json" (*  Automatic *)(* application/x-www-form-urlencoded; 
     application/json (except for uploading files);
     multipart/form-data (use to upload files); URL query string*),
     "Body" -> {
       "offset" -> OptionValue[Offset],
       "limit" -> OptionValue[Limit],
       "timeout" -> OptionValue[Timeout],
       "allowed_updates" -> OptionValue[AllowedUpdates]
       }];
   
   request = Check[URLExecute[HTTPRequest[apiurl, assoc], "JSON"], {"ok" -> False}];
   If[
    	Lookup[request, "ok"],
    	result = Lookup[request, "result"];	
    	If[result === {}, {{}}, result],
    	{{}}
    ]
   ](* end Block *);
SyntaxInformation[getUpdates] = {"ArgumentsPattern" -> {OptionsPattern[]}};



End[] (* End Private Context *)

(Attributes[#] = {Protected, ReadProtected}) & /@ Names[Evaluate[$Context<>"*"]]

EndPackage[]