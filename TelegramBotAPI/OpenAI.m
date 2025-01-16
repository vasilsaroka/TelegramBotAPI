(* Wolfram Language Package *)

BeginPackage["TelegramBotAPI`OpenAI`"]

Unprotect[Evaluate[$Context<>"*"]];


(* Exported symbols added here with SymbolName::usage *)
(* Usage messages: use here String Representation of Boxes to get formatting similar to built-in functions *)
(* Functions*)
chatCompletion::usage = "chatCompletion[\!\(\*RowBox[{StyleBox[\"messages\",\"TI\"],\",\" , StyleBox[\"model\",\"TI\"]}]\)] returns a \!\(\*StyleBox[\"model\",\"TI\"]\) response for the chat conversation given as \!\(\*StyleBox[\"messages\",\"TI\"]\) list.
chatCompletion[\!\(\*RowBox[{StyleBox[\"messages\",\"TI\"],\",\" , StyleBox[\"model\",\"TI\"],\",\" , StyleBox[\"options\",\"TI\"]}]\)] returns the response applying specified \!\(\*StyleBox[\"options\",\"TI\"]\) given as a sequence of rules.
chatCompletion[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" , \"\\\"frequency_penalty''\", \"\[Rule]\", StyleBox[\"value\",\"TI\"]}]\)] returns the response applying the specified \!\(\*StyleBox[\"value\",\"TI\"]\) to the chosen option. N.B. Option names are given as strings.
The options to choose from:
 \"store\": Whether or not to store the output of this chat completion request for use in \!\(\*TemplateBox[{\"model distillation\", \"https://platform.openai.com/docs/guides/distillation\"}, \"HyperlinkURL\"]\), or \!\(\*TemplateBox[{\"evals\", \"https://platform.openai.com/docs/guides/evals\"}, \"HyperlinkURL\"]\) products; defaults to False.
 \"reasoning_effort\": Constrains effort on reasoning for \!\(\*TemplateBox[{\"reasoning models\", \"https://platform.openai.com/docs/guides/reasoning\"}, \"HyperlinkURL\"]\); o1 models only. Currently supported values are \"low\", \"medium\", and \"high\"; defaults to \"medium\".
 \"metadata\": Developer-defined tags and values used for filtering completions in the dashboard; defaults to Null.
 \"frequency_penalty\": Number between -2.0 and 2.0. Positive values penalize new tokens based on their existing frequency in the text so far, decreasing the model's likelihood to repeat the same line verbatim; defaults to 0.
 \"logit_bias\": Modify the likelihood of specified tokens appearing in the completion; defaults to Null.
 \"logprobs\": Whether to return log probabilities of the output tokens or not; defaults to False.
 \"top_logprobs\": An integer between 0 and 20 specifying the number of most likely tokens to return at each token position, each with an associated log probability; defaults to Null.
 \"max_completion_tokens\": An upper bound for the number of tokens that can be generated for a completion, including visible output tokens and reasoning tokens; defaults to Null.
 \"n\": How many chat completion choices to generate for each input message; defaults to 1.
 \"modalities\": Output types that you would like the model to generate for this request. Most models are capable of generating text; defaults to {\"text\"}.
 \"prediction\": Configuration for a \!\(\*TemplateBox[{\"Predicted Output\", \"https://platform.openai.com/docs/guides/predicted-outputs\"}, \"HyperlinkURL\"]\), which can greatly improve response times when large parts of the model response are known ahead of time; defaults to Null.
 \"audio\": Parameters for audio output. Required when audio output is requested with \"modalities\" \[Rule] \"[\"audio\"]\"; defaults to Null.
 \"presence_penalty\": Number between -2.0 and 2.0; defaults to 0.
 \"response_format\": An object specifying the format that the model must output; defaults to Null. 
 \"seed\": If specified, the system will make a best effort to sample deterministically; defaults to Null. 
 \"service_tier\": Specifies the latency tier to use for processing the request; defaults to Null.
 \"stop\": Up to 4 sequences where the API will stop generating further tokens; defaults to Null.
 \"stream\": If set, partial message deltas will be sent, like in ChatGPT; defaults to False.
 \"stream_options\": Options for streaming response; defaults to Null.
 \"temperature\":  What sampling temperature to use, between 0 and 2; defaults to 1.
 \"top_p\": An alternative to sampling with temperature; defaults to 1.
 \"tools\": A list of tools the model can call; type, function parameters are required if not a Null; defaults to Null.     
 \"tool_choice\":  Controls which (if any) tool is called by the model; defaults to \"none\".
 \"parallel_tool_calls\": Whether to enable \!\(\*TemplateBox[{\"parallel function calling\", \"https://platform.openai.com/docs/guides/function-calling#configuring-parallel-function-calling\"}, \"HyperlinkURL\"]\) during tool use; defaults to True. 
 \"user\": A unique identifier representing your end-user, which can help OpenAI to monitor and detect abuse; defaults to \"\".  
 \"APIKey\": Your \!\(\*TemplateBox[{\"authentication key\", \"https://platform.openai.com/docs/api-reference/authentication\"}, \"HyperlinkURL\"]\) to access OpenAI API; defaults to $OpenAIAPIKey.
 \"ProjectID\": Your project that is used for an API request; defaults to $OpenProjectID.
 \"OrganizationID\": Your organization that is used for an API request; defaults to $OpenAIOrganizationID.
\!\(\*TemplateBox[{\"Read on OpenAI API webpage\", \"https://platform.openai.com/docs/api-reference/chat\"}, \"HyperlinkURL\"]\)";

imageGeneration::usage = "imageGeneration[\!\(\*RowBox[{StyleBox[\"prompt\",\"TI\"]}]\)] returns an image generated according to \!\(\*StyleBox[\"prompt\",\"TI\"]\) provided. A text description of the desired image(s). The maximum length is 1000 characters for \"dall-e-2\" and 4000 characters for \"dall-e-3\".
imageGeneration[\!\(\*RowBox[{StyleBox[\"prompt\",\"TI\"],\",\" , StyleBox[\"options\",\"TI\"]}]\)] generates the image applying specified \!\(\*StyleBox[\"options\",\"TI\"]\) given as a sequence of rules.
imageGeneration[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" , \"\\\"model''\", \"\[Rule]\", StyleBox[\"value\",\"TI\"]}]\)] generates the image applying the specified \!\(\*StyleBox[\"value\",\"TI\"]\) to the chosen option. N.B. Option names are given as strings.
The options to choose from:
 \"model\": The model to use for image generation.; defaults to \"dall-e-2\".
 \"n\": The number of images to generate. Must be between 1 and 10. For \"dall-e-3\", only n=1 is supported; defaults to 1.
 \"quality\": The quality of the image that will be generated. hd creates images with finer details and greater consistency across the image. This param is only supported for \"dall-e-3\"; defaults to \"standard\".
 \"response_format\": The format in which the generated images are returned. Must be one of \"url\" or \"b64_json\". URLs are only valid for 60 minutes after the image has been generated; defaults to \"url\".
 \"size\": The size of the generated images. Must be one of \"256x256\", \"512x512\", or \"1024x1024\" for \"dall-e-2\". Must be one of \"1024x1024\", \"1792x1024\", or \"1024x1792\" for \"dall-e-3\" models; defaults to \"1024x1024\". 
 \"style\": The style of the generated images. Must be one of \"vivid\" or \"natural\". \"vivid\" causes the model to lean towards generating hyper-real and dramatic images. \"natural\" causes the model to produce more natural, less hyper-real looking images. This parameter is only supported for \"dall-e-3\"; defaults to \"vivid\". 
 \"user\": A unique identifier representing your end-user, which can help OpenAI to monitor and detect abuse; defaults to \"\".  
 \"APIKey\": Your \!\(\*TemplateBox[{\"authentication key\", \"https://platform.openai.com/docs/api-reference/authentication\"}, \"HyperlinkURL\"]\) to access OpenAI API; defaults to $OpenAIAPIKey.
 \"ProjectID\": Your project that is used for an API request; defaults to $OpenProjectID.
 \"OrganizationID\": Your organization that is used for an API request; defaults to $OpenAIOrganizationID.
\!\(\*TemplateBox[{\"Read on OpenAI API webpage\", \"https://platform.openai.com/docs/api-reference/images/create\"}, \"HyperlinkURL\"]\)";


(* Options *)

(* Constants *)
$OpenAIURL::usage = "URL for all queries to the OpenAI API.
\!\(\*TemplateBox[{\"Read on OpenAI API webpage\", \"https://platform.openai.com/docs/api-reference/making-requests\"}, \"HyperlinkURL\"]\)"
$OpenAIAPIKey::usage = "Key used for authentication during API requests to OpenAI.
\!\(\*TemplateBox[{\"Read on OpenAI API webpage\", \"https://platform.openai.com/docs/api-reference/authentication\"}, \"HyperlinkURL\"]\)";
$OpenAIOrganizationID::usage = "For users who belong to multiple organizations, this constant specifies the default organization that is used for an API request.
\!\(\*TemplateBox[{\"Read on OpenAI API webpage\", \"https://platform.openai.com/docs/api-reference/authentication\"}, \"HyperlinkURL\"]\)";
$OpenAIProjectID::usage = "For users who are accessing their projects through their legacy user API key, this constant specifies the default project that is used for an API request.
\!\(\*TemplateBox[{\"Read on OpenAI API webpage\", \"https://platform.openai.com/docs/api-reference/authentication\"}, \"HyperlinkURL\"]\)";


Begin["`Private`"] (* Begin Private Context *) 


Clear[$OpenAIURL,$OpenAIAPIKey, $OpenAIProjectID, $OpenAIOrganizationID]
(*
$OpenAIURL, $OpenAIAPIKey, $OpenAIProjectID and $OpenAIOrganizationID are effectively set to themselves 
so that they can enter all the package functions. Then they can be changed during the session 
and take an effect on all the functions, where they are used. 
*)

(* old name is getChatCompletionFromOpenAI *)
chatCompletion::connect = "A message was generated while connecting to `1`.";
chatCompletion::err = "An error response `1` has been received from `2`.";
Options[chatCompletion] = {
   "store" -> False,
   "reasoning_effort" -> "medium",
   "metadata" -> Null,
   "frequency_penalty" -> 0,
   "logit_bias" -> Null,
   "logprobs" -> False,
   "top_logprobs" -> Null,
   "max_completion_tokens" -> Null,
   "n" -> 1,
   "modalities" -> {"text"},
   "prediction" -> Null,
   "audio" -> Null,
   "presence_penalty" -> 0,
   "response_format" -> Null,
   "seed" -> Null,
   "service_tier" -> Null,
   "stop" -> Null,
   "stream" -> False,
   "stream_options" -> Null,
   "temperature" -> 1,
   "top_p" -> 1,
   "tools" -> Null,
   "tool_choice" -> "none",
   "parallel_tool_calls" -> True,
   "user" -> "",
   
   "APIKey" -> $OpenAIAPIKey,
   "OrganizationID" -> $OpenAIOrganizationID,
   "ProjectID" -> $OpenAIProjectID
   };
chatCompletion[messages_?ListQ, model_?StringQ, OptionsPattern[]] := Catch[Block[
    {
     tools = OptionValue["tools"],
         
     apiurl, assoc, request, result
     },
    
    apiurl = StringJoin[$OpenAIURL, "chat/completions"];
    assoc = Association[
      Method -> "POST",
      "Headers" -> <|
      "Authorization" -> "Bearer " <> OptionValue["APIKey"],
      "OpenAI-Organization" -> OptionValue["OrganizationID"],
      "OpenAI-Project" -> OptionValue["ProjectID"]
      |>,
      "ContentType" -> "application/json",
      "Body" -> ExportString[{
         "messages" -> messages,
         "model" -> model,
         "store" -> OptionValue["store"],
         Sequence @@ If[
         	StringCases[model, "o1"] =!= {},
			{
				"reasoning_effort" -> OptionValue["reasoning_effort"],
                "metadata" -> OptionValue["metadata"]
            },
            {
            	"metadata" -> OptionValue["metadata"]
            }
         ](* end If *),
         "frequency_penalty" -> OptionValue["frequency_penalty"],
         "logit_bias" -> OptionValue["logit_bias"],
         "logprobs" -> OptionValue["logprobs"],
         "top_logprobs" -> OptionValue["top_logprobs"],
         "max_completion_tokens" -> OptionValue["max_completion_tokens"],
         "n" -> OptionValue["n"],
         "modalities" -> OptionValue["modalities"],
         "prediction" -> OptionValue["prediction"],
         "audio" -> OptionValue["audio"],
         "presence_penalty" -> OptionValue["presence_penalty"],
         "response_format" -> OptionValue["response_format"],
         "seed" -> OptionValue["seed"],
         "service_tier" -> OptionValue["service_tier"],
         "stop" -> OptionValue["stop"],
         "stream" -> OptionValue["stream"],
         "stream_options" -> OptionValue["stream_options"],
         "temperature" -> OptionValue["temperature"],
         "top_p" -> OptionValue["top_p"],
         Sequence @@ If[
           tools =!= Null,
           {"tools" -> tools,
            "tool_choice" -> OptionValue["tool_choice"],
            "parallel_tool_calls" -> OptionValue["parallel_tool_calls"]
            },
           {"tools" -> tools}
           ],
         "user" -> OptionValue["user"]
         }, "JSON"]];
    
    request = Check[URLExecute[HTTPRequest[apiurl, assoc]], {"created" -> Null}];
    
    If[
     	Lookup[request, "created"] === Null,
     	Message[chatCompletion::connect, $OpenAIURL];
     	Throw[{"Connection problem...", $Failed}],
     	result = Lookup[request, "error"];	
     	If[
      		MissingQ[result],
      		request,
      		Message[chatCompletion::err, result, $OpenAIURL];
      		Throw[{Lookup[result, "message"], $Failed}]
      	]
     ]
    ](* end Block *)](* end Catch*);
SyntaxInformation[chatCompletion] = {"ArgumentsPattern" -> {_,_,OptionsPattern[]}};

(* old name is getImageFromOpenAI *)
imageGeneration::connect = "A message was generated while connecting to `1`.";
imageGeneration::err = "An error response `1` has been received from `2`.";
Options[imageGeneration] = {
   "model" -> "dall-e-2",
   "n" -> 1,
   "quality" -> "standard",
   "response_format" -> "url",
   "size" -> "1024x1024",
   "style" -> "vivid",
   "user" -> "",

   "APIKey" -> $OpenAIAPIKey,
   "OrganizationID" -> $OpenAIOrganizationID,
   "ProjectID" -> $OpenAIProjectID
   };
imageGeneration[prompt_?StringQ, OptionsPattern[]] := Catch[Block[
    {
     model = OptionValue["model"],
     
     apiurl, assoc, request, result
     },
    apiurl = StringJoin[$OpenAIURL, "images/generations"];
    assoc = Association[
      Method -> "POST",
      "Headers" -> <|
      "Authorization" -> "Bearer " <> OptionValue["APIKey"],
      "OpenAI-Organization" -> OptionValue["OrganizationID"],
      "OpenAI-Project" -> OptionValue["ProjectID"]
      |>,
      "ContentType" -> "application/json",
      "Body" -> ExportString[{
         "prompt" -> prompt,
         "model" -> model,
         "n" -> OptionValue["n"],
         "quality" -> OptionValue["quality"],
         "response_format" -> OptionValue["response_format"],
         "size" -> OptionValue["size"],
         Sequence @@ If[
         	StringMatchQ[model, "dall-e-3"],
			{
		         "style" -> OptionValue["style"],
    		     "user" -> OptionValue["user"]
            },
            {
            	"user" -> OptionValue["user"]
            }
         ](* end If *)
         }, "JSON"]];
    
    request = Check[URLExecute[HTTPRequest[apiurl, assoc]], {"created" -> Null}];
    
    If[
     	Lookup[request, "created"] === Null,
     	Message[imageGeneration::connect, $OpenAIURL];
     	Throw[{"Connection problem...", $Failed}],
     	result = Lookup[request, "error"];	
     	If[
      		MissingQ[result],
      		request,
      		Message[imageGeneration::err, result, $OpenAIURL];
      		Throw[{Lookup[result, "message"], $Failed}]
      	]
     ]
    ](* end Block *)](* end Catch*);
SyntaxInformation[imageGeneration] = {"ArgumentsPattern" -> {_,OptionsPattern[]}};


(* access to OpenAI api functions *)
$OpenAIURL = "https://api.openai.com/v1/";
(* after the package constants have entered all the functions they can be set to empy strings that will be 
their initial values *)
$OpenAIAPIKey = "";
$OpenAIProjectID = "";
$OpenAIOrganizationID = "";

End[] (* End Private Context *)

(Attributes[#] = {Protected, ReadProtected}) & /@ Complement[Names[Evaluate[$Context<>"*"]], {"$OpenAIURL","$OpenAIAPIKey","$OpenAIProjectID","$OpenAIOrganizationID"}]

EndPackage[]