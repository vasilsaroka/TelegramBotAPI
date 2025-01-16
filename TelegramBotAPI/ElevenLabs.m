(* Wolfram Language Package *)

BeginPackage["TelegramBotAPI`ElevenLabs`"]

Unprotect[Evaluate[$Context<>"*"]];


(* Exported symbols added here with SymbolName::usage *)
(* Usage messages: use here String Representation of Boxes to get formatting similar to built-in functions *)
(* Functions*)
textToSpeechXI::usage = "textToSpeechXI[\!\(\*RowBox[{StyleBox[\"voiceid\",\"TI\"],\",\", StyleBox[\"text\",\"TI\"]}]\)] converts \!\(\*StyleBox[\"text\",\"TI\"]\) to speech using voice specified by \!\(\*StyleBox[\"voiceid\",\"TI\"]\). Use VoicesXI[] to list all the available voices.
textToSpeechXI[\!\(\*RowBox[{StyleBox[\"voiceid\",\"TI\"],\",\", StyleBox[\"text\",\"TI\"],\",\" , StyleBox[\"options\",\"TI\"]}]\)] converts \!\(\*StyleBox[\"text\",\"TI\"]\) to speech applying specified \!\(\*StyleBox[\"options\",\"TI\"]\) given as a sequence of rules.
textToSpeechXI[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" , \"\\\"enable_logging''\", \"\[Rule]\", StyleBox[\"value\",\"TI\"]}]\)] returns the response applying the specified \!\(\*StyleBox[\"value\",\"TI\"]\) to the chosen option. N.B. Option names are given as strings.
The options to choose from:
 \"enable_logging\": When set to False full privacy mode will be used for the request. May only be used by enterprise customers; defaults to True.
 \"output_format\": The output format of the generated audio.; defaults to \"mp3_44100_128\".
 \"model_id\": Identifier of the model to be used. Use ModelsXI[] to list the models. The model needs to have support for text to speech; defaults to \"eleven_monolingual_v1\".
 \"language_code\": Language code (ISO 639-1) used to enforce a language for the model. (currently only Turbo v2.5); defaults to Null.
 \"voice_settings\": Voice settings overriding stored setttings for the given voice; defaults to {\"stability\" \[Rule] 0.5, \"similarity_boost\" \[Rule] 0.8, \"style\" \[Rule] 0.0, \"use_speaker_boost\" \[Rule] True}.
 \"pronunciation_dictionary_locators\": A list of pronunciation dictionary locators {\"id\", \"version_id\"} to be applied to the text (up to 3 per request); defaults to an empty list {}.
 \"seed\": If specified, the system will try to sample deterministically, though determinism is not guaranteed. Must be integer between 0 and 4294967295; defaults to Null. 
 \"previous_text\": The text that came before the current request (useful for concatenating multiple generations); defaults to Null.
 \"next_text\": The text that comes after the current request. (useful for concatenating multiple generations); defaults to Null.
 \"previous_request_ids\": A list of maximum 3 \"request_id\" of the samples that were generated before this generation. If used, \"previous_text\" is ignored; defaults to {}.
 \"next_request_ids\": A list of maximum 3 \"request_id\" of the samples that were generated before this generation. If used, \"next_text\" is ignored; defaults to {}.
 \"apply_text_normalization\": Controls text normalization (e.g., spelling out numbers) with three modes: \"auto\", \"on\", and \"off\". Cannot be turned on for \"eleven_turbo_v2_5\" model.; defaults to \"auto\".
 \"Directory\": The directory to save generated speech; defaults to $TemporaryDirectory.
 \"FileName\": The file name to be given to the saved speech; defaults to \"voice\".
 \"Format\": The format to which the speech is to be exported. It is an extension of \"FileName\"; defaults to \"mp3\".
 \"APIKey\": Your \!\(\*TemplateBox[{\"authentication key\", \"https://elevenlabs.io/docs/api-reference/authentication\"}, \"HyperlinkURL\"]\) to access ElevenLabs API; defaults to $XILabsAPIKey.
\!\(\*TemplateBox[{\"Read on ElevenLabs API webpage\", \"https://elevenlabs.io/docs/api-reference/text-to-speech/convert\"}, \"HyperlinkURL\"]\)";

VoicesXI::usage = "VoicesXI[] lists the available by default voices accessing the end point \!\(\*StyleBox[\"https://api.elevenlabs.io/v1/voices\",Rule[Background, RGBColor[1, 0.85`, 0.85`]]]\).
VoicesXI[\!\(\*RowBox[{\"\\\"APIKey''\", \"\[Rule]\", StyleBox[\"string\",\"TI\"]}]\)] returns the response applying the specified \!\(\*StyleBox[\"string\",\"TI\"]\) to the chosen option. N.B. Option names are given as strings.
The options to choose from:
\"APIKey\": Your \!\(\*TemplateBox[{\"authentication key\", \"https://elevenlabs.io/docs/api-reference/authentication\"}, \"HyperlinkURL\"]\) to access ElevenLabs API; defaults to $XILabsAPIKey.
\!\(\*TemplateBox[{\"Read on ElevenLabs API webpage\", \"https://elevenlabs.io/docs/api-reference/text-to-speech/convert\"}, \"HyperlinkURL\"]\)";

ModelsXI::usage = "ModelsXI[] lists the available by default models accessing the end point \!\(\*StyleBox[\"https://api.elevenlabs.io/v1/models\",Rule[Background, RGBColor[1, 0.85`, 0.85`]]]\).
ModelsXI[\!\(\*RowBox[{\"\\\"APIKey''\", \"\[Rule]\", StyleBox[\"string\",\"TI\"]}]\)] returns the response applying the specified \!\(\*StyleBox[\"string\",\"TI\"]\) to the chosen option. N.B. Option names are given as strings.
The options to choose from:
\"APIKey\": Your \!\(\*TemplateBox[{\"authentication key\", \"https://elevenlabs.io/docs/api-reference/authentication\"}, \"HyperlinkURL\"]\) to access ElevenLabs API; defaults to $XILabsAPIKey.
\!\(\*TemplateBox[{\"Read on ElevenLabs API webpage\", \"https://elevenlabs.io/docs/api-reference/text-to-speech/convert\"}, \"HyperlinkURL\"]\)";


(* Options *)

(* Constants *)
$XILabsURL::usage = "URL for all queries to the ElevenLabs API.
\!\(\*TemplateBox[{\"Read on ElevenLabs API webpage\", \"https://elevenlabs.io/docs/api-reference/authentication#making-requests\"}, \"HyperlinkURL\"]\)";
$XILabsAPIKey::usage = "Key used for authentication during API requests to ElevenLabs.
\!\(\*TemplateBox[{\"Read on ElevenLabs API webpage\", \"https://elevenlabs.io/docs/api-reference/authentication\"}, \"HyperlinkURL\"]\)";


Begin["`Private`"] (* Begin Private Context *) 

Clear[$XILabsURL,$XILabsAPIKey]
(*
$XILabsURL, $XILabsAPIKey and etc. are effectively set to themselves 
so that they can enter all the package functions. Then they can be changed during the session 
and take an effect on all the functions, where they are used. 
*)


(* old name is TTSFromElevenLabs *)
textToSpeechXI::connect = "A message was generated while connecting to `1`: `2`";
textToSpeechXI::err = "Audio was not generated while connecting to `1`: `2`";
Options[textToSpeechXI] = {
   "enable_logging" -> True,
   "output_format" -> "mp3_44100_128",
   "model_id" -> "eleven_multilingual_v1",
   "language_code" -> Null,
   "voice_settings" -> {
     "stability" -> 0.5,
     "similarity_boost" -> 0.8,
     "style" -> 0.0,
     "use_speaker_boost" -> True
     },
   "pronunciation_dictionary_locators" -> {},
   "seed" -> Null,
   "previous_text" -> Null,
   "next_text" -> Null,
   "previous_request_ids" -> {},
   "next_request_ids" -> {},
   "apply_text_normalization" -> "auto",
   
   "Directory" -> $TemporaryDirectory,
   "FileName" -> "voice",
   "Format" -> "mp3",
   
   "APIKey" -> $XILabsAPIKey
   };
textToSpeechXI[voiceid_?StringQ, text_?StringQ, OptionsPattern[]] := Catch[Block[
    {     
     apiurl, assoc, request, result, detail
     },
    
    apiurl = StringJoin[$XILabsURL, "text-to-speech/" <> voiceid <> "/stream/"];
    assoc = Association[
      Method -> "POST",
      "ContentType" -> "application/json",
      "Body" -> ExportString[{
         "enable_logging" -> OptionValue["enable_logging"],
         "output_format" -> OptionValue["output_format"],
         "text" -> text,
         "model_id" -> OptionValue["model_id"],
         "language_code" -> OptionValue["language_code"],
         "voice_settings" -> OptionValue["voice_settings"],
         "pronunciation_dictionary_locators" -> OptionValue["pronunciation_dictionary_locators"],
         "seed" -> OptionValue["seed"],
         "previous_text" -> OptionValue["previous_text"],
         "next_text" -> OptionValue["next_text"],
         "previous_request_ids" -> OptionValue["previous_request_ids"],
         "next_request_ids" -> OptionValue["next_request_ids"],
         "apply_text_normalization" -> OptionValue["apply_text_normalization"]
         }, "JSON"],
      "Headers" -> {"xi-api-key" -> OptionValue["APIKey"]}
      ];
    
    request = Check[{"result" -> URLExecute[HTTPRequest[apiurl, assoc]]}, {"result" -> Null}];
    
    result = Lookup[request, "result"];
    If[
     	result === Null,
     	Message[textToSpeechXI::connect, $XILabsURL, "Connection problem..."];
     	Throw[$Failed],	
     	If[
      		AudioQ[result],
      		Export[FileNameJoin[{OptionValue["Directory"], OptionValue["FileName"] <> "." <> OptionValue["Format"]}], result];
      		result,
      		detail = StringJoin[Riffle[Flatten[Fold[Lookup, result, {"detail", {"status", "message"}}]], " "]];
      		Message[textToSpeechXI::err, $XILabsURL, detail];
      		Throw[$Failed]
      	]
     ](* end If *)
    ](* end Block *)](* end Catch*);
SyntaxInformation[textToSpeechXI] = {"ArgumentsPattern" -> {_,_,OptionsPattern[]}};


VoicesXI::connect = "A message was generated while connecting to `1`: `2`";
VoicesXI::err = "Request was not successful while connecting to `1`: `2`";
Options[VoicesXI] = {"APIKey" -> $XILabsAPIKey};
VoicesXI[OptionsPattern[]] := Catch[Block[
   {
    apiurl, assoc, request, result
   },
   apiurl = StringJoin[$XILabsURL, "voices"];
   assoc = <|
       Method -> "GET",
       "ContentType" -> "application/json",
       "Body" -> "",
       "Headers" -> {"xi-api-key" -> OptionValue["APIKey"]}
       |>;
       
   request = Check[URLExecute[HTTPRequest[apiurl, assoc]], Null];
    
   If[
     	request === Null,
     	Message[VoicesXI::connect, $XILabsURL, "Connection problem..."];
     	Throw[$Failed],
     	result = Lookup[request, "voices"];
     	If[
     		MissingQ[result],
      		Message[VoicesXI::err, $XILabsURL, Lookup[request, "detail"]];
      		Throw[$Failed],
      		Fold[Lookup, result, {{"voice_id", "name"}}]	
     	]
   ](* end If *)
   ](* end Block *)](* end Catch *);
SyntaxInformation[VoicesXI] = {"ArgumentsPattern" -> {OptionsPattern[]}};


ModelsXI::connect = "A message was generated while connecting to `1`: `2`";
ModelsXI::err = "Request was not successful while connecting to `1`: `2`";
Options[ModelsXI] = {"APIKey" -> $XILabsAPIKey};
ModelsXI[OptionsPattern[]] := Catch[Block[
   {
    apiurl, assoc, request, result
   },
   apiurl = StringJoin[$XILabsURL, "models"];
   assoc = <|
       Method -> "GET",
       "ContentType" -> "application/json",
       "Body" -> "",
       "Headers" -> {"xi-api-key" -> OptionValue["APIKey"]}
   |>;
      	
   request = Check[URLExecute[HTTPRequest[apiurl, assoc]], Null];
   
   If[
     	request === Null,
     	Message[ModelsXI::connect, $XILabsURL, "Connection problem..."];
     	Throw[$Failed],
     	result = Lookup[request, "detail"];
     	If[
     		Or @@ (MissingQ /@ result),
     		Prepend[Fold[Lookup, request, {{"model_id", "name", "can_do_text_to_speech", "languages"}}], 
     			{"model_id", "name", "can_do_text_to_speech", "languages"}],
      		Message[ModelsXI::err, $XILabsURL, result];
      		Throw[$Failed]
     	]
   ](* end If *)
   
   ](* end Block *)](* end Catch *);
SyntaxInformation[ModelsXI] = {"ArgumentsPattern" -> {OptionsPattern[]}};


(* access to ElevenLabs api functions *)
$XILabsURL = "https://api.elevenlabs.io/v1/";
(* after the package constants have entered all the functions they can be set to empy strings that will be 
their initial values *)
$XILabsAPIKey = "";


End[] (* End Private Context *)


(Attributes[#] = {Protected, ReadProtected}) & /@ Complement[Names[Evaluate[$Context<>"*"]], {"$XILabsURL","$XILabsAPIKey"}]


EndPackage[]