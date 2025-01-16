(* Wolfram Language Package *)

BeginPackage["TelegramBotAPI`AvailableMethods`"]

Unprotect[Evaluate[$Context<>"*"]];


(* Exported symbols added here with SymbolName::usage *)

sendMessage::usage = "sendMessage[\!\(\*RowBox[{StyleBox[\"chatid\",\"TI\"],\",\" , StyleBox[\"text\",\"TI\"]}]\)] sends \!\(\*StyleBox[\"text\",\"TI\"]\) as a message to the chat specified by \!\(\*StyleBox[\"chatid\",\"TI\"]\).
sendMessage[\!\(\*RowBox[{StyleBox[\"chatid\",\"TI\"],\",\" , StyleBox[\"text\",\"TI\"], \",\" , StyleBox[\"options\",\"TI\"]}]\)] sends text message \!\(\*StyleBox[\"text\",\"TI\"]\) with specified \!\(\*StyleBox[\"options\",\"TI\"]\).
sendMessage[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"BusinessConnectionId\", \"\[Rule]\", StyleBox[\"string\",\"TI\"]}]\)] sends a text message on behalf of the business connection specified by \!\(\*StyleBox[\"string\",\"TI\"]\).
sendMessage[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"MessageThreadId\", \"\[Rule]\", StyleBox[\"integer\",\"TI\"]}]\)] sends a text message to the message thread specified by \!\(\*StyleBox[\"integer\",\"TI\"]\).
sendMessage[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" , \"ParseMode\", \"\[Rule]\", StyleBox[\"string\",\"TI\"]}]\)] sends a text message using parse mode specified by \!\(\*StyleBox[\"string\",\"TI\"]\), see \!\(\*TemplateBox[{\"formatting options\", \"https://core.telegram.org/bots/api#formatting-options\"}, \"HyperlinkURL\"]\).
sendMessage[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"Entities\", \"\[Rule]\", StyleBox[\"list\",\"TI\"]}]\)] sends a text message with special entities that appear in \!\(\*StyleBox[\"list\",\"TI\"]\).
sendMessage[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"LinkPreviewOptions\", \"\[Rule]\", StyleBox[\"list\",\"TI\"]}]\)] sends a text message with a JSON-serialized \!\(\*StyleBox[\"list\",\"TI\"]\) of described options used for link preview generation.
sendMessage[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"DisableNotifications\", \"\[Rule]\", StyleBox[\"True\",\"TI\"]}]\)] sends a text message silently so that a user receives notification without sound.
sendMessage[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"ProtectContent\", \"\[Rule]\", StyleBox[\"True\",\"TI\"]}]\)] sends a text message protecting it from forwarding and saving.
sendMessage[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"AllowPaidBroadcast\", \"\[Rule]\", StyleBox[\"True\",\"TI\"]}]\)] enables sending up to 1000 messages per second, ignoring \!\(\*TemplateBox[{\"broadcasting limit\", \"https://core.telegram.org/bots/faq#broadcasting-to-users\"}, \"HyperlinkURL\"]\) of 30 messages per second (free) for a fee of 0.1 Telegram Stars per message.
sendMessage[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"MessageEffectId\", \"\[Rule]\", StyleBox[\"string\",\"TI\"]}]\)] sends a text message with the message effect specified by \!\(\*StyleBox[\"string\",\"TI\"]\) to be added to the message; for private chats only.
sendMessage[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"ReplyParameters\", \"\[Rule]\", StyleBox[\"list\",\"TI\"]}]\)] sends a text message with reply parameters described in a JSON-serialized \!\(\*StyleBox[\"list\",\"TI\"]\).
sendMessage[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"ReplyMarkup\", \"\[Rule]\", StyleBox[\"object\",\"TI\"]}]\)] sends a text message with an inline keyboard, custom reply keyboard, instructions to remove reply keyboard or to force a reply from the user as described in a JSON-serialized \!\(\*StyleBox[\"object\",\"TI\"]\).
sendMessage[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" , \"\\\"BotToken''\", \"\[Rule]\", StyleBox[\"bottoken\",\"TI\"]}]\)] sends a text message to the bot specified by \!\(\*StyleBox[\"bottoken\",\"TI\"]\); default is an empty \!\(\*StyleBox[\"$BotToken\",\"TI\"]\) constant that can be set to a desired value to avoid using this option every time.
\!\(\*TemplateBox[{\"Read on Telegram Bot API webpage\", \"https://core.telegram.org/bots/api#sendmessage\"}, \"HyperlinkURL\"]\)";

forwardMessage::usage = "forwardMessage[\!\(\*RowBox[{StyleBox[\"chatid\",\"TI\"],\",\" , StyleBox[\"fromchatid\",\"TI\"],\",\" , StyleBox[\"messageid\",\"TI\"]}]\)] forwards a message of any kind specified by an integer \!\(\*StyleBox[\"messageid\",\"TI\"]\) from the chat specified by a string or an integer \!\(\*StyleBox[\"fromchatid\",\"TI\"]\) to the chat specified by a string or an integer \!\(\*StyleBox[\"chatid\",\"TI\"]\). Service messages and messages with protected content can't be forwarded.
forwardMessage[\!\(\*RowBox[{StyleBox[\"chatid\",\"TI\"],\",\" , StyleBox[\"fromchatid\",\"TI\"],\",\" , StyleBox[\"messageid\",\"TI\"], \",\" , StyleBox[\"options\",\"TI\"]}]\)] forwards the message with specified \!\(\*StyleBox[\"options\",\"TI\"]\).
forwardMessage[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"MessageThreadId\", \"\[Rule]\", StyleBox[\"integer\",\"TI\"]}]\)] forwards the message to the target message thread of the forum specified by \!\(\*StyleBox[\"integer\",\"TI\"]\) (for forum supergroups only).
forwardMessage[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"DisableNotifications\", \"\[Rule]\", StyleBox[\"True\",\"TI\"]}]\)] forwards the message silently so that a user receives notification without sound.
forwardMessage[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"ProtectContent\", \"\[Rule]\", StyleBox[\"True\",\"TI\"]}]\)] forwards the message protecting it from forwarding and saving.
forwardMessage[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" , \"\\\"BotToken''\", \"\[Rule]\", StyleBox[\"bottoken\",\"TI\"]}]\)] forwards a message for the bot specified by \!\(\*StyleBox[\"bottoken\",\"TI\"]\); default is an empty \!\(\*StyleBox[\"$BotToken\",\"TI\"]\) constant that can be set to a desired value to avoid using this option every time.
\!\(\*TemplateBox[{\"Read on Telegram Bot API webpage\", \"https://core.telegram.org/bots/api#forwardmessage\"}, \"HyperlinkURL\"]\)";

copyMessage::usage = "copyMessage[\!\(\*RowBox[{StyleBox[\"chatid\",\"TI\"],\",\" , StyleBox[\"fromchatid\",\"TI\"],\",\" , StyleBox[\"messageid\",\"TI\"]}]\)] copies a message of any kind specified by an integer \!\(\*StyleBox[\"messageid\",\"TI\"]\) from the chat specified by a string or an integer \!\(\*StyleBox[\"fromchatid\",\"TI\"]\) to the chat specified by a string or an integer \!\(\*StyleBox[\"chatid\",\"TI\"]\). Service messages, paid media messages, giveaway messages, giveaway winners messages, and invoice messages can't be copied.
copyMessage[\!\(\*RowBox[{StyleBox[\"chatid\",\"TI\"],\",\" , StyleBox[\"fromchatid\",\"TI\"],\",\" , StyleBox[\"messageid\",\"TI\"], \",\" , StyleBox[\"options\",\"TI\"]}]\)] copies the message with specified \!\(\*StyleBox[\"options\",\"TI\"]\).
copyMessage[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"MessageThreadId\", \"\[Rule]\", StyleBox[\"integer\",\"TI\"]}]\)] copies the message to the target message thread of the forum specified by \!\(\*StyleBox[\"integer\",\"TI\"]\) (for forum supergroups only).
copyMessage[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"Caption\", \"\[Rule]\", StyleBox[\"string\",\"TI\"]}]\)] copies the message adding a new caption for media specified by \!\(\*StyleBox[\"string\",\"TI\"]\). The caption must be 0-1024 characters after entities parsing. If not specified, the original caption is kept.
copyMessage[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" , \"ParseMode\", \"\[Rule]\", StyleBox[\"string\",\"TI\"]}]\)] copies the message using parse mode specified by \!\(\*StyleBox[\"string\",\"TI\"]\), see \!\(\*TemplateBox[{\"formatting options\", \"https://core.telegram.org/bots/api#formatting-options\"}, \"HyperlinkURL\"]\).
copyMessage[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"CaptionEntities\", \"\[Rule]\", StyleBox[\"list\",\"TI\"]}]\)] copies the message with the new caption formatted with special entities that appear in \!\(\*StyleBox[\"list\",\"TI\"]\), can be specified instead of \!\(\*StyleBox[\"ParseMode\",\"TI\"]\).
copyMessage[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"ShowCaptionAboveMedia\", \"\[Rule]\", StyleBox[\"True\",\"TI\"]}]\)] copies the message with a new caption shown above the message media.
copyMessage[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"DisableNotifications\", \"\[Rule]\", StyleBox[\"True\",\"TI\"]}]\)] copies the message silently so that a user receives notification without sound.
copyMessage[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"ProtectContent\", \"\[Rule]\", StyleBox[\"True\",\"TI\"]}]\)] copies the message protecting it from forwarding and saving.
copyMessage[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"AllowPaidBroadcast\", \"\[Rule]\", StyleBox[\"True\",\"TI\"]}]\)] enables copying up to 1000 messages per second, ignoring \!\(\*TemplateBox[{\"broadcasting limit\", \"https://core.telegram.org/bots/faq#broadcasting-to-users\"}, \"HyperlinkURL\"]\) of 30 messages per second (free) for a fee of 0.1 Telegram Stars per message.
copyMessage[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"ReplyParameters\", \"\[Rule]\", StyleBox[\"list\",\"TI\"]}]\)] copies the message with reply parameters described in a JSON-serialized \!\(\*StyleBox[\"list\",\"TI\"]\).
copyMessage[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"ReplyMarkup\", \"\[Rule]\", StyleBox[\"object\",\"TI\"]}]\)] copies the message with additional interface options such as an inline keyboard, custom reply keyboard, instructions to remove reply keyboard or to force a reply from the user as described in a JSON-serialized \!\(\*StyleBox[\"object\",\"TI\"]\).
copyMessage[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" , \"\\\"BotToken''\", \"\[Rule]\", StyleBox[\"bottoken\",\"TI\"]}]\)] copies the message to the bot specified by \!\(\*StyleBox[\"bottoken\",\"TI\"]\); default is an empty \!\(\*StyleBox[\"$BotToken\",\"TI\"]\) constant that can be set to a desired value to avoid using this option every time.
\!\(\*TemplateBox[{\"Read on Telegram Bot API webpage\", \"https://core.telegram.org/bots/api#copymessage\"}, \"HyperlinkURL\"]\)";

sendPhoto::usage = "sendPhoto[\!\(\*RowBox[{StyleBox[\"chatid\",\"TI\"],\",\" , StyleBox[\"photo\",\"TI\"]}]\)] sends a photo specified by a string or a file \!\(\*StyleBox[\"photo\",\"TI\"]\) as a message to the chat specified by a string or an integer \!\(\*StyleBox[\"chatid\",\"TI\"]\).
sendPhoto[\!\(\*RowBox[{StyleBox[\"chatid\",\"TI\"],\",\" , StyleBox[\"photo\",\"TI\"], \",\" , StyleBox[\"options\",\"TI\"]}]\)] sends the photo with specified \!\(\*StyleBox[\"options\",\"TI\"]\).
sendPhoto[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"BusinessConnectionId\", \"\[Rule]\", StyleBox[\"string\",\"TI\"]}]\)] sends the photo on behalf of the business connection specified by \!\(\*StyleBox[\"string\",\"TI\"]\).
sendPhoto[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"MessageThreadId\", \"\[Rule]\", StyleBox[\"integer\",\"TI\"]}]\)] sends the photo to the target message thread of the forum specified by \!\(\*StyleBox[\"integer\",\"TI\"]\) (for forum supergroups only).
sendPhoto[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"Caption\", \"\[Rule]\", StyleBox[\"string\",\"TI\"]}]\)] sends the photo adding the caption specified by \!\(\*StyleBox[\"string\",\"TI\"]\). The caption must be 0-1024 characters after entities parsing.
sendPhoto[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" , \"ParseMode\", \"\[Rule]\", StyleBox[\"string\",\"TI\"]}]\)] sends the photo applying to its caption parse mode specified by \!\(\*StyleBox[\"string\",\"TI\"]\), see \!\(\*TemplateBox[{\"formatting options\", \"https://core.telegram.org/bots/api#formatting-options\"}, \"HyperlinkURL\"]\).
sendPhoto[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"CaptionEntities\", \"\[Rule]\", StyleBox[\"list\",\"TI\"]}]\)] sends the photo with the caption formatted with special entities that appear in \!\(\*StyleBox[\"list\",\"TI\"]\), can be specified instead of \!\(\*StyleBox[\"ParseMode\",\"TI\"]\).
sendPhoto[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"ShowCaptionAboveMedia\", \"\[Rule]\", StyleBox[\"True\",\"TI\"]}]\)] sends the photo with a caption shown above it.
sendPhoto[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"HasSpoiler\", \"\[Rule]\", StyleBox[\"True\",\"TI\"]}]\)] sends the photo covered with a spoiler animation.
sendPhoto[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"DisableNotifications\", \"\[Rule]\", StyleBox[\"True\",\"TI\"]}]\)] sends the photo silently so that a user receives notification without sound.
sendPhoto[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"ProtectContent\", \"\[Rule]\", StyleBox[\"True\",\"TI\"]}]\)] sends the photo protecting it from forwarding and saving.
sendPhoto[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"AllowPaidBroadcast\", \"\[Rule]\", StyleBox[\"True\",\"TI\"]}]\)] enables sending up to 1000 messages per second, ignoring \!\(\*TemplateBox[{\"broadcasting limit\", \"https://core.telegram.org/bots/faq#broadcasting-to-users\"}, \"HyperlinkURL\"]\) of 30 messages per second (free) for a fee of 0.1 Telegram Stars per message.
sendPhoto[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"MessageEffectId\", \"\[Rule]\", StyleBox[\"string\",\"TI\"]}]\)] sends the photo with the message effect specified by \!\(\*StyleBox[\"string\",\"TI\"]\) to be added to the message; for private chats only.
sendPhoto[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"ReplyParameters\", \"\[Rule]\", StyleBox[\"list\",\"TI\"]}]\)] sends the photo with reply parameters described in a JSON-serialized \!\(\*StyleBox[\"list\",\"TI\"]\).
sendPhoto[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"ReplyMarkup\", \"\[Rule]\", StyleBox[\"object\",\"TI\"]}]\)] sends the photo with an inline keyboard, custom reply keyboard, instructions to remove reply keyboard or to force a reply from the user as described in a JSON-serialized \!\(\*StyleBox[\"object\",\"TI\"]\).
sendPhoto[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" , \"\\\"BotToken''\", \"\[Rule]\", StyleBox[\"bottoken\",\"TI\"]}]\)] sends the photo to the bot specified by \!\(\*StyleBox[\"bottoken\",\"TI\"]\); default is an empty \!\(\*StyleBox[\"$BotToken\",\"TI\"]\) constant that can be set to a desired value to avoid using this option every time.
\!\(\*TemplateBox[{\"Read on Telegram Bot API webpage\", \"https://core.telegram.org/bots/api#sendphoto\"}, \"HyperlinkURL\"]\)";

sendAudio::usage = "sendAudio[\!\(\*RowBox[{StyleBox[\"chatid\",\"TI\"],\",\" , StyleBox[\"audio\",\"TI\"]}]\)] sends an audio specified by a string or a file \!\(\*StyleBox[\"audio\",\"TI\"]\) to the chat specified by a string or an integer \!\(\*StyleBox[\"chatid\",\"TI\"]\). Your audio must be in the .MP3 or .M4A format.
sendAudio[\!\(\*RowBox[{StyleBox[\"chatid\",\"TI\"],\",\" , StyleBox[\"audio\",\"TI\"], \",\" , StyleBox[\"options\",\"TI\"]}]\)] sends the audio with specified \!\(\*StyleBox[\"options\",\"TI\"]\).
sendAudio[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"BusinessConnectionId\", \"\[Rule]\", StyleBox[\"string\",\"TI\"]}]\)] sends the audio on behalf of the business connection specified by \!\(\*StyleBox[\"string\",\"TI\"]\).
sendAudio[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"MessageThreadId\", \"\[Rule]\", StyleBox[\"integer\",\"TI\"]}]\)] sends the audio to the target message thread of the forum specified by \!\(\*StyleBox[\"integer\",\"TI\"]\) (for forum supergroups only).
sendAudio[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"Caption\", \"\[Rule]\", StyleBox[\"string\",\"TI\"]}]\)] sends the audio adding the caption specified by \!\(\*StyleBox[\"string\",\"TI\"]\). The caption must be 0-1024 characters after entities parsing.
sendAudio[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" , \"ParseMode\", \"\[Rule]\", StyleBox[\"string\",\"TI\"]}]\)] sends the audio applying to its caption parse mode specified by \!\(\*StyleBox[\"string\",\"TI\"]\), see \!\(\*TemplateBox[{\"formatting options\", \"https://core.telegram.org/bots/api#formatting-options\"}, \"HyperlinkURL\"]\).
sendAudio[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"CaptionEntities\", \"\[Rule]\", StyleBox[\"list\",\"TI\"]}]\)] sends the audio with the caption formatted with special entities that appear in \!\(\*StyleBox[\"list\",\"TI\"]\), can be specified instead of \!\(\*StyleBox[\"ParseMode\",\"TI\"]\).
sendAudio[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"Duration\", \"\[Rule]\", StyleBox[\"integer\",\"TI\"]}]\)] sends the audio with the specified duration of the audio in seconds.
sendAudio[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"Performer\", \"\[Rule]\", StyleBox[\"string\",\"TI\"]}]\)] sends the audio setting performer specified by \!\(\*StyleBox[\"string\",\"TI\"]\).
sendAudio[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"Title\", \"\[Rule]\", StyleBox[\"string\",\"TI\"]}]\)] sends the audio setting title specified by \!\(\*StyleBox[\"string\",\"TI\"]\).
sendAudio[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"Thumbnail\", \"\[Rule]\", StyleBox[\"thumbnail\",\"TI\"]}]\)] sends the audio with the thumbnail specified as a file \!\(\*StyleBox[\"thumbnail\",\"TI\"]\). N.B.: String will not work.
sendAudio[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"DisableNotifications\", \"\[Rule]\", StyleBox[\"True\",\"TI\"]}]\)] sends the audio silently so that a user receives notification without sound.
sendAudio[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"ProtectContent\", \"\[Rule]\", StyleBox[\"True\",\"TI\"]}]\)] sends the audio protecting it from forwarding and saving.
sendAudio[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"AllowPaidBroadcast\", \"\[Rule]\", StyleBox[\"True\",\"TI\"]}]\)] enables sending up to 1000 messages per second, ignoring \!\(\*TemplateBox[{\"broadcasting limit\", \"https://core.telegram.org/bots/faq#broadcasting-to-users\"}, \"HyperlinkURL\"]\) of 30 messages per second (free) for a fee of 0.1 Telegram Stars per message.
sendAudio[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"MessageEffectId\", \"\[Rule]\", StyleBox[\"string\",\"TI\"]}]\)] sends the audio with the message effect specified by \!\(\*StyleBox[\"string\",\"TI\"]\) to be added to the message; for private chats only.
sendAudio[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"ReplyParameters\", \"\[Rule]\", StyleBox[\"list\",\"TI\"]}]\)] sends the audio with reply parameters described in a JSON-serialized \!\(\*StyleBox[\"list\",\"TI\"]\).
sendAudio[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"ReplyMarkup\", \"\[Rule]\", StyleBox[\"object\",\"TI\"]}]\)] sends the audio with an inline keyboard, custom reply keyboard, instructions to remove reply keyboard or to force a reply from the user as described in a JSON-serialized \!\(\*StyleBox[\"object\",\"TI\"]\).
sendAudio[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"\\\"MIMEType''\", \"\[Rule]\", StyleBox[\"string\",\"TI\"]}]\)] sends the audio applying MIMEType specified by \!\(\*StyleBox[\"string\",\"TI\"]\); \!\(\*TemplateBox[{\"read about MIME types\", \"https://developer.mozilla.org/en-US/docs/Web/HTTP/MIME_types\"}, \"HyperlinkURL\"]\).
sendAudio[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"\\\"FileName''\", \"\[Rule]\", StyleBox[\"string\",\"TI\"]}]\)] sends the audio applying file name specified by \!\(\*StyleBox[\"string\",\"TI\"]\) that must include a file extension, e.g. .mp3 or .m4a.
sendAudio[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" , \"\\\"BotToken''\", \"\[Rule]\", StyleBox[\"bottoken\",\"TI\"]}]\)] sends the audio to the bot specified by \!\(\*StyleBox[\"bottoken\",\"TI\"]\); default is an empty \!\(\*StyleBox[\"$BotToken\",\"TI\"]\) constant that can be set to a desired value to avoid using this option every time.
\!\(\*TemplateBox[{\"Read on Telegram Bot API webpage\", \"https://core.telegram.org/bots/api#sendaudio\"}, \"HyperlinkURL\"]\)";

sendDocument::usage = "sendDocument[\!\(\*RowBox[{StyleBox[\"chatid\",\"TI\"],\",\" , StyleBox[\"document\",\"TI\"]}]\)] sends a document specified by a string or a file \!\(\*StyleBox[\"document\",\"TI\"]\) as a message to the chat specified by a string or an integer \!\(\*StyleBox[\"chatid\",\"TI\"]\).
sendDocument[\!\(\*RowBox[{StyleBox[\"chatid\",\"TI\"],\",\" , StyleBox[\"document\",\"TI\"], \",\" , StyleBox[\"options\",\"TI\"]}]\)] sends the document with specified \!\(\*StyleBox[\"options\",\"TI\"]\).
sendDocument[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"BusinessConnectionId\", \"\[Rule]\", StyleBox[\"string\",\"TI\"]}]\)] sends the document on behalf of the business connection specified by \!\(\*StyleBox[\"string\",\"TI\"]\).
sendDocument[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"MessageThreadId\", \"\[Rule]\", StyleBox[\"integer\",\"TI\"]}]\)] sends the document to the target message thread of the forum specified by \!\(\*StyleBox[\"integer\",\"TI\"]\) (for forum supergroups only).
sendDocument[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"Thumbnail\", \"\[Rule]\", StyleBox[\"thumbnail\",\"TI\"]}]\)] sends the document with the thumbnail specified as a file \!\(\*StyleBox[\"thumbnail\",\"TI\"]\). N.B.: String will not work.
sendDocument[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"Caption\", \"\[Rule]\", StyleBox[\"string\",\"TI\"]}]\)] sends the document adding the caption specified by \!\(\*StyleBox[\"string\",\"TI\"]\). The caption must be 0-1024 characters after entities parsing.
sendDocument[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" , \"ParseMode\", \"\[Rule]\", StyleBox[\"string\",\"TI\"]}]\)] sends the document applying to its caption parse mode specified by \!\(\*StyleBox[\"string\",\"TI\"]\), see \!\(\*TemplateBox[{\"formatting options\", \"https://core.telegram.org/bots/api#formatting-options\"}, \"HyperlinkURL\"]\).
sendDocument[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"CaptionEntities\", \"\[Rule]\", StyleBox[\"list\",\"TI\"]}]\)] sends the document with the caption formatted with special entities that appear in \!\(\*StyleBox[\"list\",\"TI\"]\), can be specified instead of \!\(\*StyleBox[\"ParseMode\",\"TI\"]\).
sendDocument[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"DisableContentTypeDetection\", \"\[Rule]\", StyleBox[\"True\",\"TI\"]}]\)] disables automatic server-side content type detection.
sendDocument[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"DisableNotifications\", \"\[Rule]\", StyleBox[\"True\",\"TI\"]}]\)] sends the documnet silently so that a user receives notification without sound.
sendDocument[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"ProtectContent\", \"\[Rule]\", StyleBox[\"True\",\"TI\"]}]\)] sends the document protecting it from forwarding and saving.
sendDocument[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"AllowPaidBroadcast\", \"\[Rule]\", StyleBox[\"True\",\"TI\"]}]\)] enables sending up to 1000 messages per second, ignoring \!\(\*TemplateBox[{\"broadcasting limit\", \"https://core.telegram.org/bots/faq#broadcasting-to-users\"}, \"HyperlinkURL\"]\) of 30 messages per second (free) for a fee of 0.1 Telegram Stars per message.
sendDocument[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"MessageEffectId\", \"\[Rule]\", StyleBox[\"string\",\"TI\"]}]\)] sends the document with the message effect specified by \!\(\*StyleBox[\"string\",\"TI\"]\) to be added to the message; for private chats only.
sendDocument[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"ReplyParameters\", \"\[Rule]\", StyleBox[\"list\",\"TI\"]}]\)] sends the document with reply parameters described in a JSON-serialized \!\(\*StyleBox[\"list\",\"TI\"]\).
sendDocument[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"ReplyMarkup\", \"\[Rule]\", StyleBox[\"object\",\"TI\"]}]\)] sends the document with an inline keyboard, custom reply keyboard, instructions to remove reply keyboard or to force a reply from the user as described in a JSON-serialized \!\(\*StyleBox[\"object\",\"TI\"]\).
sendDocument[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"\\\"MIMEType''\", \"\[Rule]\", StyleBox[\"string\",\"TI\"]}]\)] sends the document applying MIMEType specified by \!\(\*StyleBox[\"string\",\"TI\"]\); \!\(\*TemplateBox[{\"read about MIME types\", \"https://developer.mozilla.org/en-US/docs/Web/HTTP/MIME_types\"}, \"HyperlinkURL\"]\).
sendDocument[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"\\\"FileName''\", \"\[Rule]\", StyleBox[\"string\",\"TI\"]}]\)] sends the document applying file name specified by \!\(\*StyleBox[\"string\",\"TI\"]\) that must include a file extension, e.g. .txt, .pdf, .png etc.
sendDocument[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" , \"\\\"BotToken''\", \"\[Rule]\", StyleBox[\"bottoken\",\"TI\"]}]\)] sends the document to the bot specified by \!\(\*StyleBox[\"bottoken\",\"TI\"]\); default is an empty \!\(\*StyleBox[\"$BotToken\",\"TI\"]\) constant that can be set to a desired value to avoid using this option every time.
\!\(\*TemplateBox[{\"Read on Telegram Bot API webpage\", \"https://core.telegram.org/bots/api#senddocument\"}, \"HyperlinkURL\"]\)";

sendVideo::usage = "sendVideo[\!\(\*RowBox[{StyleBox[\"chatid\",\"TI\"],\",\" , StyleBox[\"video\",\"TI\"]}]\)] sends a video specified by a string or a file \!\(\*StyleBox[\"video\",\"TI\"]\) to the chat specified by a string or an integer \!\(\*StyleBox[\"chatid\",\"TI\"]\). Telegram clients support MPEG4 videos (other formats may be sent by sendDocument[\[Ellipsis]]).
sendVideo[\!\(\*RowBox[{StyleBox[\"chatid\",\"TI\"],\",\" , StyleBox[\"video\",\"TI\"], \",\" , StyleBox[\"options\",\"TI\"]}]\)] sends the video with specified \!\(\*StyleBox[\"options\",\"TI\"]\).
sendVideo[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"BusinessConnectionId\", \"\[Rule]\", StyleBox[\"string\",\"TI\"]}]\)] sends the video on behalf of the business connection specified by \!\(\*StyleBox[\"string\",\"TI\"]\).
sendVideo[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"MessageThreadId\", \"\[Rule]\", StyleBox[\"integer\",\"TI\"]}]\)] sends the video to the target message thread of the forum specified by \!\(\*StyleBox[\"integer\",\"TI\"]\) (for forum supergroups only).
sendVideo[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"Duration\", \"\[Rule]\", StyleBox[\"integer\",\"TI\"]}]\)] sends the video with the specified duration in seconds.
sendVideo[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"Width\", \"\[Rule]\", StyleBox[\"integer\",\"TI\"]}]\)] sends the video with the specified width.
sendVideo[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"Height\", \"\[Rule]\", StyleBox[\"integer\",\"TI\"]}]\)] sends the video with the specified height.
sendVideo[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"Thumbnail\", \"\[Rule]\", StyleBox[\"thumbnail\",\"TI\"]}]\)] sends the video with the thumbnail specified as a file \!\(\*StyleBox[\"thumbnail\",\"TI\"]\). N.B.: String will not work.
sendVideo[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"Caption\", \"\[Rule]\", StyleBox[\"string\",\"TI\"]}]\)] sends the video adding the caption specified by \!\(\*StyleBox[\"string\",\"TI\"]\). The caption must be 0-1024 characters after entities parsing.
sendVideo[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" , \"ParseMode\", \"\[Rule]\", StyleBox[\"string\",\"TI\"]}]\)] sends the video applying to its caption parse mode specified by \!\(\*StyleBox[\"string\",\"TI\"]\), see \!\(\*TemplateBox[{\"formatting options\", \"https://core.telegram.org/bots/api#formatting-options\"}, \"HyperlinkURL\"]\).
sendVideo[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"CaptionEntities\", \"\[Rule]\", StyleBox[\"list\",\"TI\"]}]\)] sends the video with the caption formatted with special entities that appear in \!\(\*StyleBox[\"list\",\"TI\"]\), can be specified instead of \!\(\*StyleBox[\"ParseMode\",\"TI\"]\).
sendVideo[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"ShowCaptionAboveMedia\", \"\[Rule]\", StyleBox[\"True\",\"TI\"]}]\)] sends the video with a caption shown above it.
sendVideo[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"HasSpoiler\", \"\[Rule]\", StyleBox[\"True\",\"TI\"]}]\)] sends the video covered with a spoiler animation.
sendVideo[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"SupportStreaming\", \"\[Rule]\", StyleBox[\"True\",\"TI\"]}]\)] sends the video specifying that the uploaded video is suitable for streaming.
sendVideo[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"DisableNotifications\", \"\[Rule]\", StyleBox[\"True\",\"TI\"]}]\)] sends the video silently so that a user receives notification without sound.
sendVideo[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"ProtectContent\", \"\[Rule]\", StyleBox[\"True\",\"TI\"]}]\)] sends the video protecting it from forwarding and saving.
sendVideo[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"AllowPaidBroadcast\", \"\[Rule]\", StyleBox[\"True\",\"TI\"]}]\)] enables sending up to 1000 messages per second, ignoring \!\(\*TemplateBox[{\"broadcasting limit\", \"https://core.telegram.org/bots/faq#broadcasting-to-users\"}, \"HyperlinkURL\"]\) of 30 messages per second (free) for a fee of 0.1 Telegram Stars per message.
sendVideo[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"MessageEffectId\", \"\[Rule]\", StyleBox[\"string\",\"TI\"]}]\)] sends the video with the message effect specified by \!\(\*StyleBox[\"string\",\"TI\"]\) to be added to the message; for private chats only.
sendVideo[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"ReplyParameters\", \"\[Rule]\", StyleBox[\"list\",\"TI\"]}]\)] sends the video with reply parameters described in a JSON-serialized \!\(\*StyleBox[\"list\",\"TI\"]\).
sendVideo[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"ReplyMarkup\", \"\[Rule]\", StyleBox[\"object\",\"TI\"]}]\)] sends the video with an inline keyboard, custom reply keyboard, instructions to remove reply keyboard or to force a reply from the user as described in a JSON-serialized \!\(\*StyleBox[\"object\",\"TI\"]\).
sendVideo[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"\\\"MIMEType''\", \"\[Rule]\", StyleBox[\"string\",\"TI\"]}]\)] sends the video applying MIMEType specified by \!\(\*StyleBox[\"string\",\"TI\"]\); \!\(\*TemplateBox[{\"read about MIME types\", \"https://developer.mozilla.org/en-US/docs/Web/HTTP/MIME_types\"}, \"HyperlinkURL\"]\).
sendVideo[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"\\\"FileName''\", \"\[Rule]\", StyleBox[\"string\",\"TI\"]}]\)] sends the video applying file name specified by \!\(\*StyleBox[\"string\",\"TI\"]\) that must include a file extension, e.g. .mp4.
sendVideo[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" , \"\\\"BotToken''\", \"\[Rule]\", StyleBox[\"bottoken\",\"TI\"]}]\)] sends the video to the bot specified by \!\(\*StyleBox[\"bottoken\",\"TI\"]\); default is an empty \!\(\*StyleBox[\"$BotToken\",\"TI\"]\) constant that can be set to a desired value to avoid using this option every time.
\!\(\*TemplateBox[{\"Read on Telegram Bot API webpage\", \"https://core.telegram.org/bots/api#sendvideo\"}, \"HyperlinkURL\"]\)";

sendAnimation::usage = "sendAnimation[\!\(\*RowBox[{StyleBox[\"chatid\",\"TI\"],\",\" , StyleBox[\"animation\",\"TI\"]}]\)] sends an animation (GIF or H.264/MPEG-4 AVC video without sound) specified by a string or a file \!\(\*StyleBox[\"animation\",\"TI\"]\) to the chat specified by a string or an integer \!\(\*StyleBox[\"chatid\",\"TI\"]\).
sendAnimation[\!\(\*RowBox[{StyleBox[\"chatid\",\"TI\"],\",\" , StyleBox[\"animation\",\"TI\"], \",\" , StyleBox[\"options\",\"TI\"]}]\)] sends the animation with specified \!\(\*StyleBox[\"options\",\"TI\"]\).
sendAnimation[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"BusinessConnectionId\", \"\[Rule]\", StyleBox[\"string\",\"TI\"]}]\)] sends the animation on behalf of the business connection specified by \!\(\*StyleBox[\"string\",\"TI\"]\).
sendAnimation[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"MessageThreadId\", \"\[Rule]\", StyleBox[\"integer\",\"TI\"]}]\)] sends the animation to the target message thread of the forum specified by \!\(\*StyleBox[\"integer\",\"TI\"]\) (for forum supergroups only).
sendAnimation[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"Duration\", \"\[Rule]\", StyleBox[\"integer\",\"TI\"]}]\)] sends the animation with the specified duration in seconds.
sendAnimation[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"Width\", \"\[Rule]\", StyleBox[\"integer\",\"TI\"]}]\)] sends the animation with the specified width.
sendAnimation[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"Height\", \"\[Rule]\", StyleBox[\"integer\",\"TI\"]}]\)] sends the animation with the specified height.
sendAnimation[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"Thumbnail\", \"\[Rule]\", StyleBox[\"thumbnail\",\"TI\"]}]\)] sends the animation with the thumbnail specified as a file \!\(\*StyleBox[\"thumbnail\",\"TI\"]\). N.B.: String will not work.
sendAnimation[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"Caption\", \"\[Rule]\", StyleBox[\"string\",\"TI\"]}]\)] sends the animation adding the caption specified by \!\(\*StyleBox[\"string\",\"TI\"]\). The caption must be 0-1024 characters after entities parsing.
sendAnimation[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" , \"ParseMode\", \"\[Rule]\", StyleBox[\"string\",\"TI\"]}]\)] sends the animation applying to its caption parse mode specified by \!\(\*StyleBox[\"string\",\"TI\"]\), see \!\(\*TemplateBox[{\"formatting options\", \"https://core.telegram.org/bots/api#formatting-options\"}, \"HyperlinkURL\"]\).
sendAnimation[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"CaptionEntities\", \"\[Rule]\", StyleBox[\"list\",\"TI\"]}]\)] sends the animation with the caption formatted with special entities that appear in \!\(\*StyleBox[\"list\",\"TI\"]\), can be specified instead of \!\(\*StyleBox[\"ParseMode\",\"TI\"]\).
sendAnimation[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"ShowCaptionAboveMedia\", \"\[Rule]\", StyleBox[\"True\",\"TI\"]}]\)] sends the animation with a caption shown above it.
sendAnimation[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"HasSpoiler\", \"\[Rule]\", StyleBox[\"True\",\"TI\"]}]\)] sends the animation covered with a spoiler animation.
sendAnimation[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"DisableNotifications\", \"\[Rule]\", StyleBox[\"True\",\"TI\"]}]\)] sends the animation silently so that a user receives notification without sound.
sendAnimation[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"ProtectContent\", \"\[Rule]\", StyleBox[\"True\",\"TI\"]}]\)] sends the animation protecting it from forwarding and saving.
sendAnimation[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"AllowPaidBroadcast\", \"\[Rule]\", StyleBox[\"True\",\"TI\"]}]\)] enables sending up to 1000 messages per second, ignoring \!\(\*TemplateBox[{\"broadcasting limit\", \"https://core.telegram.org/bots/faq#broadcasting-to-users\"}, \"HyperlinkURL\"]\) of 30 messages per second (free) for a fee of 0.1 Telegram Stars per message.
sendAnimation[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"MessageEffectId\", \"\[Rule]\", StyleBox[\"string\",\"TI\"]}]\)] sends the animation with the message effect specified by \!\(\*StyleBox[\"string\",\"TI\"]\) to be added to the message; for private chats only.
sendAnimation[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"ReplyParameters\", \"\[Rule]\", StyleBox[\"list\",\"TI\"]}]\)] sends the animation with reply parameters described in a JSON-serialized \!\(\*StyleBox[\"list\",\"TI\"]\).
sendAnimation[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"ReplyMarkup\", \"\[Rule]\", StyleBox[\"object\",\"TI\"]}]\)] sends the animation with an inline keyboard, custom reply keyboard, instructions to remove reply keyboard or to force a reply from the user as described in a JSON-serialized \!\(\*StyleBox[\"object\",\"TI\"]\).
sendAnimation[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"\\\"MIMEType''\", \"\[Rule]\", StyleBox[\"string\",\"TI\"]}]\)] sends the animation applying MIMEType specified by \!\(\*StyleBox[\"string\",\"TI\"]\); \!\(\*TemplateBox[{\"read about MIME types\", \"https://developer.mozilla.org/en-US/docs/Web/HTTP/MIME_types\"}, \"HyperlinkURL\"]\).
sendAnimation[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"\\\"FileName''\", \"\[Rule]\", StyleBox[\"string\",\"TI\"]}]\)] sends the animation applying file name specified by \!\(\*StyleBox[\"string\",\"TI\"]\) that must include a file extension, e.g. .gif.
sendAnimation[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" , \"\\\"BotToken''\", \"\[Rule]\", StyleBox[\"bottoken\",\"TI\"]}]\)] sends the animation to the bot specified by \!\(\*StyleBox[\"bottoken\",\"TI\"]\); default is an empty \!\(\*StyleBox[\"$BotToken\",\"TI\"]\) constant that can be set to a desired value to avoid using this option every time.
\!\(\*TemplateBox[{\"Read on Telegram Bot API webpage\", \"https://core.telegram.org/bots/api#sendanimation\"}, \"HyperlinkURL\"]\)";

sendVoice::usage = "sendVoice[\!\(\*RowBox[{StyleBox[\"chatid\",\"TI\"],\",\" , StyleBox[\"voice\",\"TI\"]}]\)] sends a voice message specified by a string or a file \!\(\*StyleBox[\"voice\",\"TI\"]\) to the chat specified by a string or an integer \!\(\*StyleBox[\"chatid\",\"TI\"]\).
sendVoice[\!\(\*RowBox[{StyleBox[\"chatid\",\"TI\"],\",\" , StyleBox[\"voice\",\"TI\"], \",\" , StyleBox[\"options\",\"TI\"]}]\)] sends the voice message with specified \!\(\*StyleBox[\"options\",\"TI\"]\).
sendVoice[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"BusinessConnectionId\", \"\[Rule]\", StyleBox[\"string\",\"TI\"]}]\)] sends the voice message on behalf of the business connection specified by \!\(\*StyleBox[\"string\",\"TI\"]\).
sendVoice[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"MessageThreadId\", \"\[Rule]\", StyleBox[\"integer\",\"TI\"]}]\)] sends the voice message to the target message thread of the forum specified by \!\(\*StyleBox[\"integer\",\"TI\"]\) (for forum supergroups only).
sendVoice[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"Caption\", \"\[Rule]\", StyleBox[\"string\",\"TI\"]}]\)] sends the voice message adding the caption specified by \!\(\*StyleBox[\"string\",\"TI\"]\). The caption must be 0-1024 characters after entities parsing.
sendVoice[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" , \"ParseMode\", \"\[Rule]\", StyleBox[\"string\",\"TI\"]}]\)] sends the voice messge applying to its caption parse mode specified by \!\(\*StyleBox[\"string\",\"TI\"]\), see \!\(\*TemplateBox[{\"formatting options\", \"https://core.telegram.org/bots/api#formatting-options\"}, \"HyperlinkURL\"]\).
sendVoice[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"CaptionEntities\", \"\[Rule]\", StyleBox[\"list\",\"TI\"]}]\)] sends the voice message with the caption formatted with special entities that appear in \!\(\*StyleBox[\"list\",\"TI\"]\), can be specified instead of \!\(\*StyleBox[\"ParseMode\",\"TI\"]\).
sendVoice[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"Duration\", \"\[Rule]\", StyleBox[\"integer\",\"TI\"]}]\)] sends the voice message with the specified duration of the audio in seconds.
sendVoice[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"DisableNotifications\", \"\[Rule]\", StyleBox[\"True\",\"TI\"]}]\)] sends the voice message silently so that a user receives notification without sound.
sendVoice[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"ProtectContent\", \"\[Rule]\", StyleBox[\"True\",\"TI\"]}]\)] sends the voice message protecting it from forwarding and saving.
sendVoice[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"AllowPaidBroadcast\", \"\[Rule]\", StyleBox[\"True\",\"TI\"]}]\)] enables sending up to 1000 messages per second, ignoring \!\(\*TemplateBox[{\"broadcasting limit\", \"https://core.telegram.org/bots/faq#broadcasting-to-users\"}, \"HyperlinkURL\"]\) of 30 messages per second (free) for a fee of 0.1 Telegram Stars per message.
sendVoice[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"MessageEffectId\", \"\[Rule]\", StyleBox[\"string\",\"TI\"]}]\)] sends the voice message with the message effect specified by \!\(\*StyleBox[\"string\",\"TI\"]\) to be added to the message; for private chats only.
sendVoice[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"ReplyParameters\", \"\[Rule]\", StyleBox[\"list\",\"TI\"]}]\)] sends the voice message with reply parameters described in a JSON-serialized \!\(\*StyleBox[\"list\",\"TI\"]\).
sendVoice[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"ReplyMarkup\", \"\[Rule]\", StyleBox[\"object\",\"TI\"]}]\)] sends the voice message with an inline keyboard, custom reply keyboard, instructions to remove reply keyboard or to force a reply from the user as described in a JSON-serialized \!\(\*StyleBox[\"object\",\"TI\"]\).
sendVoice[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"\\\"MIMEType''\", \"\[Rule]\", StyleBox[\"string\",\"TI\"]}]\)] sends the voice message applying MIMEType specified by \!\(\*StyleBox[\"string\",\"TI\"]\); \!\(\*TemplateBox[{\"read about MIME types\", \"https://developer.mozilla.org/en-US/docs/Web/HTTP/MIME_types\"}, \"HyperlinkURL\"]\).
sendVoice[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" , \"\\\"BotToken''\", \"\[Rule]\", StyleBox[\"bottoken\",\"TI\"]}]\)] sends the voice message to the bot specified by \!\(\*StyleBox[\"bottoken\",\"TI\"]\); default is an empty \!\(\*StyleBox[\"$BotToken\",\"TI\"]\) constant that can be set to a desired value to avoid using this option every time.
\!\(\*TemplateBox[{\"Read on Telegram Bot API webpage\", \"https://core.telegram.org/bots/api#sendvoice\"}, \"HyperlinkURL\"]\)";

sendLocation::usage = "sendLocation[\!\(\*RowBox[{StyleBox[\"chatid\",\"TI\"],\",\" , StyleBox[\"latitude\",\"TI\"], \",\" , StyleBox[\"longitude\",\"TI\"]}]\)] sends a point on the map (location) specified by real numbers \!\(\*StyleBox[\"latitude\",\"TI\"]\) and \!\(\*StyleBox[\"longitude\",\"TI\"]\) to the chat specified by a string or an integer \!\(\*StyleBox[\"chatid\",\"TI\"]\).
sendLocation[\!\(\*RowBox[{StyleBox[\"chatid\",\"TI\"],\",\" , StyleBox[\"latitude\",\"TI\"], \",\" , StyleBox[\"longitude\",\"TI\"], \",\" , StyleBox[\"options\",\"TI\"]}]\)] sends the location with specified \!\(\*StyleBox[\"options\",\"TI\"]\).
sendLocation[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"BusinessConnectionId\", \"\[Rule]\", StyleBox[\"string\",\"TI\"]}]\)] sends the location on behalf of the business connection specified by \!\(\*StyleBox[\"string\",\"TI\"]\).
sendLocation[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"MessageThreadId\", \"\[Rule]\", StyleBox[\"integer\",\"TI\"]}]\)] sends the location to the target message thread of the forum specified by \!\(\*StyleBox[\"integer\",\"TI\"]\) (for forum supergroups only).
sendLocation[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"HorizontalAccuracy\", \"\[Rule]\", StyleBox[\"real\",\"TI\"]}]\)] sends the location adding the radius of uncertainty specified by \!\(\*StyleBox[\"real\",\"TI\"]\), measured in meters; 0-1500.
sendLocation[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" , \"LivePeriod\", \"\[Rule]\", StyleBox[\"integer\",\"TI\"]}]\)] sends the location updated for period in seconds (see \!\(\*TemplateBox[{\"Live Locations\", \"https://telegram.org/blog/live-locations\"}, \"HyperlinkURL\"]\)). The period should be between 60 and 86400, or 0x7FFFFFFF for live locations that can be edited indefinitely.
sendLocation[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"Heading\", \"\[Rule]\", StyleBox[\"integer\",\"TI\"]}]\)] sends the location with a direction in which the user is moving specified by \!\(\*StyleBox[\"integer\",\"TI\"]\) in degrees. The direction must be between 1 and 360 if specified.
sendLocation[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"ProximityAlertRadius\", \"\[Rule]\", StyleBox[\"integer\",\"TI\"]}]\)] sends the location specifying in meters a maximum distance for proximity alerts about approaching another chat member. The distance must be between 1 and 100000 if specified.
sendLocation[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"DisableNotifications\", \"\[Rule]\", StyleBox[\"True\",\"TI\"]}]\)] sends the location silently so that a user receives notification without sound.
sendLocation[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"ProtectContent\", \"\[Rule]\", StyleBox[\"True\",\"TI\"]}]\)] sends the location protecting it from forwarding and saving.
sendLocation[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"AllowPaidBroadcast\", \"\[Rule]\", StyleBox[\"True\",\"TI\"]}]\)] enables sending up to 1000 messages per second, ignoring \!\(\*TemplateBox[{\"broadcasting limit\", \"https://core.telegram.org/bots/faq#broadcasting-to-users\"}, \"HyperlinkURL\"]\) of 30 messages per second (free) for a fee of 0.1 Telegram Stars per message.
sendLocation[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"MessageEffectId\", \"\[Rule]\", StyleBox[\"string\",\"TI\"]}]\)] sends the location with the message effect specified by \!\(\*StyleBox[\"string\",\"TI\"]\) to be added to the message; for private chats only.
sendLocation[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"ReplyParameters\", \"\[Rule]\", StyleBox[\"list\",\"TI\"]}]\)] sends the location with reply parameters described in a JSON-serialized \!\(\*StyleBox[\"list\",\"TI\"]\).
sendLocation[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"ReplyMarkup\", \"\[Rule]\", StyleBox[\"object\",\"TI\"]}]\)] sends the location with an inline keyboard, custom reply keyboard, instructions to remove reply keyboard or to force a reply from the user as described in a JSON-serialized \!\(\*StyleBox[\"object\",\"TI\"]\).
sendLocation[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" , \"\\\"BotToken''\", \"\[Rule]\", StyleBox[\"bottoken\",\"TI\"]}]\)] sends the location to the bot specified by \!\(\*StyleBox[\"bottoken\",\"TI\"]\); default is an empty \!\(\*StyleBox[\"$BotToken\",\"TI\"]\) constant that can be set to a desired value to avoid using this option every time.
\!\(\*TemplateBox[{\"Read on Telegram Bot API webpage\", \"https://core.telegram.org/bots/api#sendlocation\"}, \"HyperlinkURL\"]\)";

sendVenue::usage = "sendVenue[\!\(\*RowBox[{StyleBox[\"chatid\",\"TI\"],\",\" , StyleBox[\"latitude\",\"TI\"], \",\" , StyleBox[\"longitude\",\"TI\"], \",\", StyleBox[\"title\",\"TI\"], \",\" , StyleBox[\"address\",\"TI\"]}]\)] sends information about a venue  with location specified by real numbers \!\(\*StyleBox[\"latitude\",\"TI\"]\) and \!\(\*StyleBox[\"longitude\",\"TI\"]\) to the chat specified by a string or an integer \!\(\*StyleBox[\"chatid\",\"TI\"]\). The strings \!\(\*StyleBox[\"title\",\"TI\"]\) and \!\(\*StyleBox[\"address\",\"TI\"]\) are compulsory.
sendVenue[\!\(\*RowBox[{StyleBox[\"chatid\",\"TI\"],\",\" , StyleBox[\"latitude\",\"TI\"], \",\" , StyleBox[\"longitude\",\"TI\"], \",\", StyleBox[\"title\",\"TI\"], \",\" , StyleBox[\"address\",\"TI\"], \",\" , StyleBox[\"options\",\"TI\"]}]\)] sends the information about a venue with specified \!\(\*StyleBox[\"options\",\"TI\"]\).
sendVenue[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"BusinessConnectionId\", \"\[Rule]\", StyleBox[\"string\",\"TI\"]}]\)] sends the venue information on behalf of the business connection specified by \!\(\*StyleBox[\"string\",\"TI\"]\).
sendVenue[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"MessageThreadId\", \"\[Rule]\", StyleBox[\"integer\",\"TI\"]}]\)] sends the venue information to the target message thread of the forum specified by \!\(\*StyleBox[\"integer\",\"TI\"]\) (for forum supergroups only).
sendVenue[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"FoursquareId\", \"\[Rule]\", StyleBox[\"string\",\"TI\"]}]\)] sends the venue information for the venue with a Foursquare identifier given by \!\(\*StyleBox[\"string\",\"TI\"]\).
sendVenue[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" , \"FoursquareType\", \"\[Rule]\", StyleBox[\"string\",\"TI\"]}]\)] sends the venue information specifying Foursquare type of the venue by  \!\(\*StyleBox[\"string\",\"TI\"]\).
sendVenue[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"GooglePlaceId\", \"\[Rule]\", StyleBox[\"string\",\"TI\"]}]\)] sends the venue information for the venue with a Google Places identifier given by \!\(\*StyleBox[\"string\",\"TI\"]\).
sendVenue[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"GooglePlaceType\", \"\[Rule]\", StyleBox[\"string\",\"TI\"]}]\)] sends the venue information specifying Google Places type of the venue, see \!\(\*TemplateBox[{\"supported types\", \"https://developers.google.com/maps/documentation/places/web-service/supported_types\"}, \"HyperlinkURL\"]\).
sendVenue[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"DisableNotifications\", \"\[Rule]\", StyleBox[\"True\",\"TI\"]}]\)] sends the venue information silently so that a user receives notification without sound.
sendVenue[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"ProtectContent\", \"\[Rule]\", StyleBox[\"True\",\"TI\"]}]\)] sends the venue information protecting it from forwarding and saving.
sendVenue[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"AllowPaidBroadcast\", \"\[Rule]\", StyleBox[\"True\",\"TI\"]}]\)] enables sending up to 1000 messages per second, ignoring \!\(\*TemplateBox[{\"broadcasting limit\", \"https://core.telegram.org/bots/faq#broadcasting-to-users\"}, \"HyperlinkURL\"]\) of 30 messages per second (free) for a fee of 0.1 Telegram Stars per message.
sendVenue[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"MessageEffectId\", \"\[Rule]\", StyleBox[\"string\",\"TI\"]}]\)] sends the venue information with the message effect specified by \!\(\*StyleBox[\"string\",\"TI\"]\) to be added to the message; for private chats only.
sendVenue[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"ReplyParameters\", \"\[Rule]\", StyleBox[\"list\",\"TI\"]}]\)] sends the venue information with reply parameters described in a JSON-serialized \!\(\*StyleBox[\"list\",\"TI\"]\).
sendVenue[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"ReplyMarkup\", \"\[Rule]\", StyleBox[\"object\",\"TI\"]}]\)] sends the venue information with an inline keyboard, custom reply keyboard, instructions to remove reply keyboard or to force a reply from the user as described in a JSON-serialized \!\(\*StyleBox[\"object\",\"TI\"]\).
sendVenue[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" , \"\\\"BotToken''\", \"\[Rule]\", StyleBox[\"bottoken\",\"TI\"]}]\)] sends the venue information to the bot specified by \!\(\*StyleBox[\"bottoken\",\"TI\"]\); default is an empty \!\(\*StyleBox[\"$BotToken\",\"TI\"]\) constant that can be set to a desired value to avoid using this option every time.
\!\(\*TemplateBox[{\"Read on Telegram Bot API webpage\", \"https://core.telegram.org/bots/api#sendvenue\"}, \"HyperlinkURL\"]\)";

sendContact::usage = "sendContact[\!\(\*RowBox[{StyleBox[\"chatid\",\"TI\"],\",\" , StyleBox[\"phonenumber\",\"TI\"], \",\" , StyleBox[\"firstname\",\"TI\"]}]\)] sends a phone contact specified by two strings \!\(\*StyleBox[\"phonenumber\",\"TI\"]\) and \!\(\*StyleBox[\"firstname\",\"TI\"]\) to the chat specified by a string or an integer \!\(\*StyleBox[\"chatid\",\"TI\"]\).
sendContact[\!\(\*RowBox[{StyleBox[\"chatid\",\"TI\"],\",\" , StyleBox[\"phonenumber\",\"TI\"], \",\" , StyleBox[\"firstname\",\"TI\"], \",\" , StyleBox[\"options\",\"TI\"]}]\)] sends the phone contact with specified \!\(\*StyleBox[\"options\",\"TI\"]\).
sendContact[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"BusinessConnectionId\", \"\[Rule]\", StyleBox[\"string\",\"TI\"]}]\)] sends the phone contact on behalf of the business connection specified by \!\(\*StyleBox[\"string\",\"TI\"]\).
sendContact[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"MessageThreadId\", \"\[Rule]\", StyleBox[\"integer\",\"TI\"]}]\)] sends the phone contact to the target message thread of the forum specified by \!\(\*StyleBox[\"integer\",\"TI\"]\) (for forum supergroups only).
sendContact[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"LastName\", \"\[Rule]\", StyleBox[\"string\",\"TI\"]}]\)] sends the phone contact with a last name given by \!\(\*StyleBox[\"string\",\"TI\"]\).
sendContact[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" , \"VCard\", \"\[Rule]\", StyleBox[\"string\",\"TI\"]}]\)] sends the contact specifying specify additional data about the contact by \!\(\*StyleBox[\"string\",\"TI\"]\) in the form of a \!\(\*TemplateBox[{\"vCard\", \"https://en.wikipedia.org/wiki/VCard\"}, \"HyperlinkURL\"]\), 0-2048 bytes.
sendContact[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"DisableNotifications\", \"\[Rule]\", StyleBox[\"True\",\"TI\"]}]\)] sends the phone contact silently so that a user receives notification without sound.
sendContact[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"ProtectContent\", \"\[Rule]\", StyleBox[\"True\",\"TI\"]}]\)] sends the phone contact protecting it from forwarding and saving.
sendContact[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"AllowPaidBroadcast\", \"\[Rule]\", StyleBox[\"True\",\"TI\"]}]\)] enables sending up to 1000 messages per second, ignoring \!\(\*TemplateBox[{\"broadcasting limit\", \"https://core.telegram.org/bots/faq#broadcasting-to-users\"}, \"HyperlinkURL\"]\) of 30 messages per second (free) for a fee of 0.1 Telegram Stars per message.
sendContact[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"MessageEffectId\", \"\[Rule]\", StyleBox[\"string\",\"TI\"]}]\)] sends the phone contact with the message effect specified by \!\(\*StyleBox[\"string\",\"TI\"]\) to be added to the message; for private chats only.
sendContact[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"ReplyParameters\", \"\[Rule]\", StyleBox[\"list\",\"TI\"]}]\)] sends the phone contact with reply parameters described in a JSON-serialized \!\(\*StyleBox[\"list\",\"TI\"]\).
sendContact[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"ReplyMarkup\", \"\[Rule]\", StyleBox[\"object\",\"TI\"]}]\)] sends the phone contact with an inline keyboard, custom reply keyboard, instructions to remove reply keyboard or to force a reply from the user as described in a JSON-serialized \!\(\*StyleBox[\"object\",\"TI\"]\).
sendContact[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" , \"\\\"BotToken''\", \"\[Rule]\", StyleBox[\"bottoken\",\"TI\"]}]\)] sends the phone contact to the bot specified by \!\(\*StyleBox[\"bottoken\",\"TI\"]\); default is an empty \!\(\*StyleBox[\"$BotToken\",\"TI\"]\) constant that can be set to a desired value to avoid using this option every time.
\!\(\*TemplateBox[{\"Read on Telegram Bot API webpage\", \"https://core.telegram.org/bots/api#sendcontact\"}, \"HyperlinkURL\"]\)";


sendChatAction::usage = "sendChatAction[\!\(\*RowBox[{StyleBox[\"chatid\",\"TI\"],\",\" , StyleBox[\"action\",\"TI\"]}]\)] sends a chat action specified by a string \!\(\*StyleBox[\"action\",\"TI\"]\) to the chat specified by a string or an integer \!\(\*StyleBox[\"chatid\",\"TI\"]\). The action can be \n\"typing\" for text messages,\n\"upload_photo\" for photos,\n\"record_video\" or \"upload_video\" for videos,\n\"record_voice\" or \"upload_voice\" for voice notes,\n\"upload_document\" for general files,\n\"choose_sticker\" for stickers,\n\"find_location\" for location data,\n\"record_video_note\" or \"upload_video_note\" for video notes.
sendChatAction[\!\(\*RowBox[{StyleBox[\"chatid\",\"TI\"],\",\" , StyleBox[\"action\",\"TI\"], \",\" , StyleBox[\"options\",\"TI\"]}]\)] sends the chat action with specified \!\(\*StyleBox[\"options\",\"TI\"]\).
sendChatAction[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"BusinessConnectionId\", \"\[Rule]\", StyleBox[\"string\",\"TI\"]}]\)] sends the chat action on behalf of the business connection specified by \!\(\*StyleBox[\"string\",\"TI\"]\).
sendChatAction[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"MessageThreadId\", \"\[Rule]\", StyleBox[\"integer\",\"TI\"]}]\)] sends the chat action to the target message thread of the forum specified by \!\(\*StyleBox[\"integer\",\"TI\"]\) (for forum supergroups only).
sendChatAction[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" , \"\\\"BotToken''\", \"\[Rule]\", StyleBox[\"bottoken\",\"TI\"]}]\)] sends the chat action to the bot specified by \!\(\*StyleBox[\"bottoken\",\"TI\"]\); default is an empty \!\(\*StyleBox[\"$BotToken\",\"TI\"]\) constant that can be set to a desired value to avoid using this option every time.
\!\(\*TemplateBox[{\"Read on Telegram Bot API webpage\", \"https://core.telegram.org/bots/api#sendchataction\"}, \"HyperlinkURL\"]\)";

setMessageReaction::usage = "setMessageReaction[\!\(\*RowBox[{StyleBox[\"chatid\",\"TI\"],\",\" , StyleBox[\"messageid\",\"TI\"]}]\)] sets a reaction of the message specified by an integer \!\(\*StyleBox[\"messageid\",\"TI\"]\) in the chat specified by a string or an integer \!\(\*StyleBox[\"chatid\",\"TI\"]\). Bots can't use paid reactions.
setMessageReaction[\!\(\*RowBox[{StyleBox[\"chatid\",\"TI\"],\",\" , StyleBox[\"messageid\",\"TI\"], \",\" , StyleBox[\"options\",\"TI\"]}]\)] sets the reaction of the message with specified \!\(\*StyleBox[\"options\",\"TI\"]\).
setMessageReaction[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"Reaction\", \"\[Rule]\", StyleBox[\"list\",\"TI\"]}]\)] sets the reaction as described in a JSON-serialized \!\(\*StyleBox[\"list\",\"TI\"]\).
setMessageReaction[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"IsBig\", \"\[Rule]\", StyleBox[\"True\",\"TI\"]}]\)] sets the reaction with a big animation.
setMessageReaction[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" , \"\\\"BotToken''\", \"\[Rule]\", StyleBox[\"bottoken\",\"TI\"]}]\)] sets the reaction of the message in the bot specified by \!\(\*StyleBox[\"bottoken\",\"TI\"]\); default is an empty \!\(\*StyleBox[\"$BotToken\",\"TI\"]\) constant that can be set to a desired value to avoid using this option every time.
\!\(\*TemplateBox[{\"Read on Telegram Bot API webpage\", \"https://core.telegram.org/bots/api#setmessagereaction\"}, \"HyperlinkURL\"]\)";

getFile::usage = "getFile[\!\(\*RowBox[{StyleBox[\"fileid\",\"TI\"]}]\)] gets basic information about a file specified by a string \!\(\*StyleBox[\"fileid\",\"TI\"]\) and prepares it for downloading. The file can then be downloaded via the link \!\(\*StyleBox[\"https://api.telegram.org/file/bot<token>/<file_path>\",Rule[Background, RGBColor[1, 0.85`, 0.85`]]]\), where \!\(\*StyleBox[\"<file_path>\",Rule[Background, RGBColor[1, 0.85`, 0.85`]]]\) is taken from the response.
getFile[\!\(\*RowBox[{StyleBox[\"fileid\",\"TI\"], \",\" , StyleBox[\"options\",\"TI\"]}]\)] gets basic information about the file with specified \!\(\*StyleBox[\"options\",\"TI\"]\).
getFile[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" , \"\\\"BotToken''\", \"\[Rule]\", StyleBox[\"bottoken\",\"TI\"]}]\)] gets basic information about the file for the bot specified by \!\(\*StyleBox[\"bottoken\",\"TI\"]\); default is an empty \!\(\*StyleBox[\"$BotToken\",\"TI\"]\) constant that can be set to a desired value to avoid using this option every time.
\!\(\*TemplateBox[{\"Read on Telegram Bot API webpage\", \"https://core.telegram.org/bots/api#getfile\"}, \"HyperlinkURL\"]\)";

answerCallbackQuery::usage = "answerCallbackQuery[\!\(\*RowBox[{StyleBox[\"callbackqueryid\",\"TI\"]}]\)] sends an answer to callback query specified by \!\(\*StyleBox[\"callbackqueryid\",\"TI\"]\) sent from inline keyboards.
answerCallbackQuery[\!\(\*RowBox[{StyleBox[\"callbackqueryid\",\"TI\"], \",\" , StyleBox[\"options\",\"TI\"]}]\)] sends the answer with specified \!\(\*StyleBox[\"options\",\"TI\"]\).
answerCallbackQuery[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"Text\", \"\[Rule]\", StyleBox[\"string\",\"TI\"]}]\)] sends the answer that displayed to the user as a notification at the top of the chat screen.
answerCallbackQuery[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" , \"ShowAlert\", \"\[Rule]\", StyleBox[\"True\",\"TI\"]}]\)] sends the answer with an alert shown by the client instead of a notification.
answerCallbackQuery[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"URL\", \"\[Rule]\", StyleBox[\"string\",\"TI\"]}]\)] sends the answer with \!\(\*StyleBox[\"string\",\"TI\"]\) URL being opened by the user's client.
answerCallbackQuery[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" ,\"CacheTime\", \"\[Rule]\", StyleBox[\"integer\",\"TI\"]}]\)] sends the answer with the result of the callback query being cached client-side for \!\(\*StyleBox[\"integer\",\"TI\"]\) seconds.
answerCallbackQuery[\!\(\*RowBox[{\"\[Ellipsis]\", \",\" , \"\\\"BotToken''\", \"\[Rule]\", StyleBox[\"bottoken\",\"TI\"]}]\)] sends the answer to the bot specified by \!\(\*StyleBox[\"bottoken\",\"TI\"]\); default is an empty \!\(\*StyleBox[\"$BotToken\",\"TI\"]\) constant that can be set to a desired value to avoid using this option every time.
\!\(\*TemplateBox[{\"Read on Telegram Bot API webpage\", \"https://core.telegram.org/bots/api#answercallbackquery\"}, \"HyperlinkURL\"]\)";


(* Options *)
BusinessConnectionId::usage = "An option for a unique identifier of the business connection on behalf of which the message will be sent.";
MessageThreadId::usage = "An option for a unique identifier for the target message thread (topic) of the forum; for forum supergroups only.";
ParseMode::usage = "An option choosing mode for parsing entities in the message text such as MarkdownV2, HTML or Markdown styles.";
Entities::usage = "An option which can be specified instead of ParseMode. It takes a JSON-serialized list of special entities that must appear in message text.";
LinkPreviewOptions::usage = "An option to provide link preview generation options for the message. It takes a JSON-serialized list.";
DisableNotification::usage = "A boolean option to send the message silently. Users will receive a notification with no sound.";
ProtectContent::usage = "A boolean option that protects the contents of the sent message from forwarding and saving.";
AllowPaidBroadcast::usage = "A boolean option that allows bot to send up to 1000 messages per second, ignoring broadcasting limit of 30 messages per second (free) for a fee of 0.1 Telegram Stars per message send.";
MessageEffectId::usage = "An option for a unique identifier of the message effect to be added to the message; for private chats only.";
ReplyParameters::usage = "An option containing the description of the message to reply to as a JSON-serialized list.";
ReplyMarkup::usage = "An option for additional interface options. A JSON-serialized object for an inline keyboard, custom reply keyboard, instructions to remove reply keyboard or to force a reply from the user.";
Caption::usage = "An option for adding a caption to media. The capiton must be 0-1024 characters after entities parsing.";
CaptionEntities::usage = "An option for formatting captions of media. A JSON-serialized list of special entities that appear in the caption, which can be specified instead of \!\(\*StyleBox[\"ParseMode\",\"TI\"]\).";
ShowCaptionAboveMedia::usage = "A boolean option to force the caption to be shown above the message media.";
HasSpoiler::usage = "A boolean option to force the media to be covered with a spoiler animation.";
DisableContentTypeDetection::usage = "A boolean option to disables automatic server-side content type detection when files are uploaded using \!\(\*StyleBox[\"multipart/form-data\",\"TI\"]\).";
Reaction::usage = "An option specifying the reaction to the message. A JSON-serialized list of reaction types to set on the message. Currently, as non-premium users, bots can set up to one reaction per message. A custom emoji reaction can be used if it is either already present on the message or explicitly allowed by chat administrators. Paid reactions can't be used by bots.";
IsBig::usage = "A bollean option to set the reaction with a big animation.";
Performer::usage = "An option for describing audio files.";
Title::usage = "An option for specifying a title of media or a chat.";
Width::usage = "An option for specifying width of media.";
Height::usage = "An option for specifying height of media.";
SupportsStreaming::usage = "A boolean option specifying if the uploaded video is suitable for streaming.";
HorizontalAccuracy::usage = "An option to specify the radius of uncertainty for the location, measured in meters; 0-1500.";
LivePeriod::usage = "An option Period in seconds during which the location will be updated (see \!\(\*TemplateBox[{\"Live Locations\", \"https://telegram.org/blog/live-locations\"}, \"HyperlinkURL\"]\), should be between 60 and 86400, or 0x7FFFFFFF for live locations that can be edited indefinitely";
Heading::usage = "An option for live locations, a direction in which the user is moving, in degrees. Must be between 1 and 360 if specified.";
ProximityAlertRadius::usage = "An option for live locations, a maximum distance for proximity alerts about approaching another chat member, in meters. Must be between 1 and 100000 if specified.";
FoursquareId::usage = "An option to specify Foursquare identifier of the venue.";
FoursquareType::usage = "An option to specify Foursquare type of the venue, if known. (For example, \"arts_entertainment/default\", \"arts_entertainment/aquarium\" or \"food/icecream\").";
GooglePlaceId::usage = "An option to specify Google Places identifier of the venue.";
GooglePlaceType::usage = "An option to specify Google Places type of the venue. (See \!\(\*TemplateBox[{\"supported types\", \"https://developers.google.com/maps/documentation/places/web-service/supported_types\"}, \"HyperlinkURL\"]\)).";
LastName::usage = "An option to specify a last name, for example for a contact.";
VCard::usage = "An option to specify additional data about the contact in the form of a \!\(\*TemplateBox[{\"vCard\", \"https://en.wikipedia.org/wiki/VCard\"}, \"HyperlinkURL\"]\), 0-2048 bytes.";
ShowAlert::usage = "An option in answerCallbackQuery. If \!\(\*StyleBox[\"True\",\"TI\"]\), an alert will be shown by the client instead of a notification at the top of the chat screen. Defaults to \!\(\*StyleBox[\"False\",\"TI\"]\).";
CacheTime::usage = "An option specifying the maximum amount of time in seconds that the result of the callback query may be cached client-side. Telegram apps will support caching starting in version 3.14. Defaults to 0.";


Text::usage = "In Telegram Bot API` context, an option for a text notificaiton in answerCallbackQuery.  If not specified, nothing will be shown to the user, 0-200 characters.";
URL::usage = "In Telegram Bot API` context, URL that will be opened by the user's client.";
Thumbnail::usage = "In Telegram Bot API` context, an option for sending files with a thumbnail in functions such as sendDocument[\[Ellipsis]].";
Duration::usage = "In Telegram Bot API` context, an option in functions sending audio files.";


Begin["`Private`"] (* Begin Private Context *) 

sendMessage::err = "Error code: `1`; Description: `2`";
Options[sendMessage] = {
   BusinessConnectionId -> "",
   MessageThreadId -> 0,
   ParseMode -> "",
   Entities -> "",
   LinkPreviewOptions -> "",
   DisableNotification -> False,
   ProtectContent -> False,
   AllowPaidBroadcast -> False,
   MessageEffectId -> "",
   ReplyParameters -> "",
   ReplyMarkup -> "",
   "BotToken" -> TelegramBotAPI`$BotToken
   };
sendMessage[chatid_?(StringQ[#] || IntegerQ[#] &), text_?StringQ, OptionsPattern[]] := Catch[Block[
    {
     apiurl, assoc, res
     },
    apiurl = URL[StringJoin[TelegramBotAPI`$TelegramURL, "bot", OptionValue["BotToken"], "/", "sendMessage"]];
    
    assoc = Association[
      Method -> "POST",
      "ContentType" -> Automatic,
      "Body" -> {
        "chat_id" -> chatid,
        "text" -> text,
        "business_connection_id" -> ToString[OptionValue[BusinessConnectionId]],
        "message_thread_id" -> OptionValue[MessageThreadId],
        "parse_mode" -> OptionValue[ParseMode],
        "entities" -> OptionValue[Entities],
        "link_preview_options" -> OptionValue[LinkPreviewOptions],
        "disable_notification" -> ToString[OptionValue[DisableNotification]],
        "protect_content" -> ToString[OptionValue[ProtectContent]],
        "allow_paid_broadcast" -> ToString[OptionValue[AllowPaidBroadcast]],
        "message_effect_id" -> OptionValue[MessageEffectId],
        "reply_parameters" -> OptionValue[ReplyParameters],
        "reply_markup" -> OptionValue[ReplyMarkup]
        }];
    res = URLExecute[HTTPRequest[apiurl, assoc]];
    If[
     	Lookup[res, "ok"],
     	res,
     	Message[sendMessage::err, Lookup[res, "error_code"], Lookup[res, "description"]];
     	Throw[$Failed]
     ]
    ](* end Block *)](* end Catch *);
SyntaxInformation[sendMessage] = {"ArgumentsPattern" -> {_,_,OptionsPattern[]}};


(* updated with "ContentType" -> "application/json", "Body" -> ExportString[...,"JSON"];
all ToString[] functions within ExportString[] are removed *)

forwardMessage::err = "Error code: `1`; Description: `2`";
Options[forwardMessage] = {
   MessageThreadId -> 0,
   DisableNotification -> False,
   ProtectContent -> False,
   "BotToken" -> TelegramBotAPI`$BotToken
   };
forwardMessage[chatid_?(StringQ[#] || IntegerQ[#] &), fromchatid_?(StringQ[#] || IntegerQ[#] &), messageid_?IntegerQ, 
   OptionsPattern[]] := Catch[Block[
    {
     apiurl, assoc, res
     },
    apiurl = 
     URL[StringJoin[TelegramBotAPI`$TelegramURL, "bot", OptionValue["BotToken"], "/", "forwardMessage"]];
    
    assoc = Association[
      Method -> "POST",
      "ContentType" -> Automatic (* "application/json" *),
      "Body" -> ExportString[{
        "chat_id" -> chatid,
        "from_chat_id" -> fromchatid,
        "message_id" -> messageid,
        "message_thread_id" -> OptionValue[MessageThreadId],
        "disable_notification" -> OptionValue[DisableNotification],
        "protect_content" -> OptionValue[ProtectContent]
        },"JSON"]
    ];
    res = URLExecute[HTTPRequest[apiurl, assoc]];
    If[
     	Lookup[res, "ok"],
     	res,
     	Message[forwardMessage::err, Lookup[res, "error_code"], Lookup[res, "description"]];
     	Throw[$Failed]
     ]
    ](* end Block *)](* end Catch *);
SyntaxInformation[forwardMessage] = {"ArgumentsPattern" -> {_,_,_,OptionsPattern[]}};


copyMessage::err = "Error code: `1`; Description: `2`";
Options[copyMessage] = {
   MessageThreadId -> 0,
   Caption -> "",
   ParseMode -> "",
   CaptionEntities -> "",
   ShowCaptionAboveMedia -> False,
   DisableNotification -> False,
   ProtectContent -> False,
   AllowPaidBroadcast -> False,
   ReplyParameters -> "",
   ReplyMarkup -> "",
   "BotToken" -> TelegramBotAPI`$BotToken
   };
copyMessage[chatid_?(StringQ[#] || IntegerQ[#] &), fromchatid_?(StringQ[#] || IntegerQ[#] &), messageid_?IntegerQ, 
   OptionsPattern[]] := Catch[Block[
    {
     apiurl, assoc, res
    },
    apiurl = URL[StringJoin[TelegramBotAPI`$TelegramURL, "bot", OptionValue["BotToken"], "/", "copyMessage"]];
    
    assoc = Association[
      Method -> "POST",
      "ContentType" -> Automatic (* "application/json" *),
      "Body" -> ExportString[{
        "chat_id" -> chatid,
        "from_chat_id" -> fromchatid,
        "message_id" -> messageid,
        "message_thread_id" -> OptionValue[MessageThreadId],
        "caption" -> OptionValue[Caption],
        "parse_mode" -> OptionValue[ParseMode],
        "caption_entities" -> OptionValue[CaptionEntities],
        "show_caption_above_media" -> OptionValue[ShowCaptionAboveMedia],
        "disable_notification" -> OptionValue[DisableNotification],
        "protect_content" -> OptionValue[ProtectContent],
        "allow_paid_broadcast" -> OptionValue[AllowPaidBroadcast],
        "reply_parameters" -> OptionValue[ReplyParameters],
        "reply_markup" -> OptionValue[ReplyMarkup]
        },"JSON"]
    ];
    res = URLExecute[HTTPRequest[apiurl, assoc]];
    If[
     	Lookup[res, "ok"],
     	res,
     	Message[copyMessage::err, Lookup[res, "error_code"], Lookup[res, "description"]];
     	Throw[$Failed]
     ]
    ](* end Block *)](* end Catch *);
SyntaxInformation[copyMessage] = {"ArgumentsPattern" -> {_,_,_,OptionsPattern[]}};


sendPhoto::err = "Error code: `1`; Description: `2`";
sendPhoto::file = "`1` must be either a url or file ID string or an input file wrapped with File[\[Ellipsis]] construct.";
Options[sendPhoto] = {
   BusinessConnectionId -> "",
   MessageThreadId -> 0,
   Caption -> "",
   ParseMode -> "",
   CaptionEntities -> "",
   ShowCaptionAboveMedia -> False,
   HasSpoiler -> False,
   DisableNotification -> False,
   ProtectContent -> False,
   AllowPaidBroadcast -> False,
   MessageEffectId -> "",
   ReplyParameters -> "",
   ReplyMarkup -> "",
   "BotToken" -> TelegramBotAPI`$BotToken
   };
sendPhoto[chatid_?(StringQ[#] || IntegerQ[#] &), photo_, OptionsPattern[]] := Catch[Block[
    {
          
     apiurl, assoc, mfd, res
    },
    apiurl = URL[StringJoin[TelegramBotAPI`$TelegramURL, "bot", OptionValue["BotToken"], "/", "sendPhoto"]];
    
    (* For File[...] emojies are allowed in captions by exporting them into JSON with ExportString[...] *)
    (* Emojies in replymarkup are allowed by exporting list of buttons to JSON with JSONObject[...,"Emojies"->True] *)
    assoc = Association[
       Method -> "POST",
       "ContentType" -> Switch[
     		Head[photo],
     		File,
     		mfd = True;
     		"multipart/form-data",
     		String,
     		mfd = False;
     		Automatic (*  "application/x-www-form-urlencoded" *),
     		_,
     		Message[sendPhoto::file, photo];
     		Throw[$Failed]
     	],
       "Body" -> {
         "chat_id" -> chatid,
         "photo" -> photo,
         "business_connection_id" -> ToString[OptionValue[BusinessConnectionId]],
         "message_thread_id" -> OptionValue[MessageThreadId],
         "caption" -> If[
         	mfd,
     	    (* StringTake removes leading and ending " symbols after JSON export; 
     	    JSON export is needed to display emojies in the caption *)
         	StringTake[ExportString[OptionValue[Caption], "JSON"], {2, -2}],
            OptionValue[Caption]
            ](* end If *),
         "parse_mode" -> OptionValue[ParseMode],
         "caption_entities" -> OptionValue[CaptionEntities],
         "show_caption_above_media" -> ToString[OptionValue[ShowCaptionAboveMedia]],
         "has_spoiler" -> ToString[OptionValue[HasSpoiler]],
         "disable_notification" -> ToString[OptionValue[DisableNotification]],
         "protect_content" -> ToString[OptionValue[ProtectContent]],
         "allow_paid_broadcast" -> ToString[OptionValue[AllowPaidBroadcast]],
         "message_effect_id" -> OptionValue[MessageEffectId],
         "reply_parameters" -> OptionValue[ReplyParameters],
         "reply_markup" -> OptionValue[ReplyMarkup]
         }];
    (*Print[assoc];*)
    res = URLExecute[HTTPRequest[apiurl, assoc]];
    If[
     	Lookup[res, "ok"],
     	res,
     	Message[sendPhoto::err, Lookup[res, "error_code"], Lookup[res, "description"]];
     	Throw[$Failed]
     ]
    ](* end Block *)](* end Catch; *);
SyntaxInformation[sendPhoto] = {"ArgumentsPattern" -> {_,_,OptionsPattern[]}};

sendAudio::err = "Error code: `1`; Description: `2`";
sendAudio::file = "`1` must be either a url or file ID string or an input file wrapped with File[\[Ellipsis]] construct.";
Options[sendAudio] = {
   BusinessConnectionId -> "",
   MessageThreadId -> 0,
   Caption -> "",
   ParseMode -> "",
   CaptionEntities -> "",
   Duration -> "",
   Performer -> "",
   Title -> "",
   Thumbnail -> "",
   DisableNotification -> False,
   ProtectContent -> False,
   AllowPaidBroadcast -> False,
   MessageEffectId -> "",
   ReplyParameters -> "",
   ReplyMarkup -> "",
   "MIMEType" -> "audio/mpeg",
   "FileName" -> "audio.mp3",
   "BotToken" -> TelegramBotAPI`$BotToken
   };
sendAudio[chatid_?(StringQ[#] || IntegerQ[#] &), audio_, OptionsPattern[]] := Catch[Block[
    {
     thumbnail = OptionValue[Thumbnail],
     
     apiurl, assoc, res
     },
    apiurl = URL[StringJoin[TelegramBotAPI`$TelegramURL, "bot", OptionValue["BotToken"], "/", "sendAudio"]];
    
    Switch[
     Head[audio],
     File,
     assoc = Association[
       Method -> "POST",
       "ContentType" -> "multipart/form-data",
       "Body" -> {
         "chat_id" -> chatid,
         "audio" -> Association[
         	"Content" -> audio, 
         	"Name" -> OptionValue["FileName"], 
         	"MIMEType" -> OptionValue["MIMEType"]
         ],
         "business_connection_id" -> ToString[OptionValue[BusinessConnectionId]],
         "message_thread_id" -> OptionValue[MessageThreadId],
         "caption" -> StringTake[ExportString[OptionValue[Caption], "JSON"], {2, -2}],
         "parse_mode" -> OptionValue[ParseMode],
         "caption_entities" -> OptionValue[CaptionEntities],
         "duration" -> ToString[OptionValue[Duration]],
         "performer" -> OptionValue[Performer],
         "title" -> OptionValue[Title],
         "thumbnail" -> If[Head[thumbnail] === File, thumbnail,""] (* Thumbnail is ignored if not specified as a File *),
         "disable_notification" -> ToString[OptionValue[DisableNotification]],
         "protect_content" -> ToString[OptionValue[ProtectContent]],
         "allow_paid_broadcast" -> ToString[OptionValue[AllowPaidBroadcast]],
         "message_effect_id" -> OptionValue[MessageEffectId],
         "reply_parameters" -> OptionValue[ReplyParameters],
         "reply_markup" -> OptionValue[ReplyMarkup]
     }],
     String,
     assoc = Association[
       Method -> "POST",
       "ContentType" -> Automatic (*  "application/x-www-form-urlencoded" *),
       "Body" -> {
         "chat_id" -> chatid,
         "audio" -> audio,
         "business_connection_id" -> ToString[OptionValue[BusinessConnectionId]],
         "message_thread_id" -> OptionValue[MessageThreadId],
         "caption" -> OptionValue[Caption],
         "parse_mode" -> OptionValue[ParseMode],
         "caption_entities" -> OptionValue[CaptionEntities],
         "duration" -> ToString[OptionValue[Duration]],
         "performer" -> OptionValue[Performer],
         "title" -> OptionValue[Title],
         "disable_notification" -> ToString[OptionValue[DisableNotification]],
         "protect_content" -> ToString[OptionValue[ProtectContent]],
         "allow_paid_broadcast" -> ToString[OptionValue[AllowPaidBroadcast]],
         "message_effect_id" -> OptionValue[MessageEffectId],
         "reply_parameters" -> OptionValue[ReplyParameters],
         "reply_markup" -> OptionValue[ReplyMarkup]
     }],
     _,
     Message[sendAudio::file, audio];
     Throw[$Failed]
     ](* end Switch *);
    
    res = URLExecute[HTTPRequest[apiurl, assoc]];
    If[
     	Lookup[res, "ok"],
     	res,
     	Message[sendAudio::err, Lookup[res, "error_code"], Lookup[res, "description"]];
     	Throw[$Failed]
     ]
    ](* end Block *)](* end Catch *);
SyntaxInformation[sendAudio] = {"ArgumentsPattern" -> {_,_,OptionsPattern[]}};


sendDocument::err = "Error code: `1`; Description: `2`";
sendDocument::file = "`1` must be either a url or file ID string or an input file wrapped with File[\[Ellipsis]] construct.";
Options[sendDocument] = {
   BusinessConnectionId -> "",
   MessageThreadId -> 0,
   Thumbnail -> "",
   Caption -> "",
   ParseMode -> "",
   CaptionEntities -> "",
   DisableContentTypeDetection -> False,
   DisableNotification -> False,
   ProtectContent -> False,
   AllowPaidBroadcast -> False,
   MessageEffectId -> "",
   ReplyParameters -> "",
   ReplyMarkup -> "",
   "MIMEType" -> "application/pdf" (* or "image/png" etc. *),
   "FileName" -> "document.pdf" (* MUST include file extension, i.e. ".pdf", ".png" etc. *),
   "BotToken" -> TelegramBotAPI`$BotToken
   };
sendDocument[chatid_?(StringQ[#] || IntegerQ[#] &), document_, OptionsPattern[]] := Catch[Block[
    {
     thumbnail = OptionValue[Thumbnail],
     
     apiurl, assoc, res
     },
    apiurl = URL[StringJoin[TelegramBotAPI`$TelegramURL, "bot", OptionValue["BotToken"], "/", "sendDocument"]];
    
    Switch[
        Head[document],
        File, 
    	assoc = Association[
       	Method -> "POST",
       	"ContentType" -> "multipart/form-data",
       	"Body" -> {
         "chat_id" -> chatid,
         "document" -> Association[
         	 "Content" -> document, 
         	 "Name" -> OptionValue["FileName"], 
         	 "MIMEType" -> OptionValue["MIMEType"]
           ],
         "business_connection_id" -> ToString[OptionValue[BusinessConnectionId]],
         "message_thread_id" -> OptionValue[MessageThreadId],
         "thumbnail" -> If[Head[thumbnail] === File, thumbnail,""] (* Thumbnail is ignored if not specified as a File *),
         "caption" -> StringTake[ExportString[OptionValue[Caption], "JSON"], {2, -2}],
         "parse_mode" -> OptionValue[ParseMode],
         "caption_entities" -> OptionValue[CaptionEntities],
         "disable_content_type_detection" -> ToString[OptionValue[DisableContentTypeDetection]],
         "disable_notification" -> ToString[OptionValue[DisableNotification]],
         "protect_content" -> ToString[OptionValue[ProtectContent]],
         "allow_paid_broadcast" -> ToString[OptionValue[AllowPaidBroadcast]],
         "message_effect_id" -> OptionValue[MessageEffectId],
         "reply_parameters" -> OptionValue[ReplyParameters],
         "reply_markup" -> OptionValue[ReplyMarkup]
    	}],
    	String,
    	assoc = Association[
       	Method -> "POST",
       	"ContentType" -> Automatic (*  "application/x-www-form-urlencoded" *),
       	"Body" -> {
         "chat_id" -> chatid,
         "document" -> document,
         "business_connection_id" -> ToString[OptionValue[BusinessConnectionId]],
         "message_thread_id" -> OptionValue[MessageThreadId],
         "caption" -> OptionValue[Caption],
         "parse_mode" -> OptionValue[ParseMode],
         "caption_entities" -> OptionValue[CaptionEntities],
         "disable_content_type_detection" -> ToString[OptionValue[DisableContentTypeDetection]],
         "disable_notification" -> ToString[OptionValue[DisableNotification]],
         "protect_content" -> ToString[OptionValue[ProtectContent]],
         "allow_paid_broadcast" -> ToString[OptionValue[AllowPaidBroadcast]],
         "message_effect_id" -> OptionValue[MessageEffectId],
         "reply_parameters" -> OptionValue[ReplyParameters],
         "reply_markup" -> OptionValue[ReplyMarkup]
    	}],
    	_,
    	Message[sendDocument::file, document];
    	Throw[$Failed]
    ](* end Switch *);
    
    (*Print[assoc];*)
    res = URLExecute[HTTPRequest[apiurl, assoc]];
    If[
     	Lookup[res, "ok"],
     	res,
     	Message[sendDocument::err, Lookup[res, "error_code"], Lookup[res, "description"]];
     	Throw[$Failed]
     ]
    ](* end Block *)](* end Catch *);
SyntaxInformation[sendDocument] = {"ArgumentsPattern" -> {_,_,OptionsPattern[]}};

sendVideo::err = "Error code: `1`; Description: `2`";
sendVideo::file = "`1` must be either a url or file ID string or an input file wrapped with File[\[Ellipsis]] construct.";
Options[sendVideo] = {
   BusinessConnectionId -> "",
   MessageThreadId -> 0,
   Duration -> "",
   Width -> "",
   Height -> "",
   Thumbnail -> "",
   Caption -> "",
   ParseMode -> "",
   CaptionEntities -> "",
   ShowCaptionAboveMedia -> False,
   HasSpoiler -> False,
   SupportsStreaming -> False,
   DisableNotification -> False,
   ProtectContent -> False,
   AllowPaidBroadcast -> False,
   MessageEffectId -> "",
   ReplyParameters -> "",
   ReplyMarkup -> "",
   "MIMEType" -> "video/mp4",
   "FileName" -> "video.mp4" (* MUST include file extension, i.e. ".mp4" *),
   "BotToken" -> TelegramBotAPI`$BotToken
   };
sendVideo[chatid_?(StringQ[#] || IntegerQ[#] &), video_, OptionsPattern[]] := Catch[Block[
    {
     thumbnail = OptionValue[Thumbnail],
     
     apiurl, assoc, res
     },
    apiurl = URL[StringJoin[TelegramBotAPI`$TelegramURL, "bot", OptionValue["BotToken"], "/", "sendVideo"]];
    
    Switch[
     Head[video],
     File,
     assoc = Association[
       Method -> "POST",
       "ContentType" -> "multipart/form-data",
       "Body" -> {
         "chat_id" -> chatid,
         "video" -> Association[
         	"Content" -> video, 
         	"Name" -> OptionValue["FileName"], 
         	"MIMEType" -> OptionValue["MIMEType"]
         ],
         "business_connection_id" -> ToString[OptionValue[BusinessConnectionId]],
         "message_thread_id" -> OptionValue[MessageThreadId],
         "duration" -> ToString[OptionValue[Duration]],
         "with" -> ToString[OptionValue[Width]],
         "height" -> ToString[OptionValue[Height]],
         "thumbnail" -> If[Head[thumbnail] === File, thumbnail,""] (* Thumbnail is ignored if not specified as a File *),
         "caption" -> StringTake[ExportString[OptionValue[Caption], "JSON"], {2, -2}],
         "parse_mode" -> OptionValue[ParseMode],
         "caption_entities" -> OptionValue[CaptionEntities],
         "show_caption_above_media" -> ToString[OptionValue[ShowCaptionAboveMedia]],
         "has_spoiler" -> ToString[OptionValue[HasSpoiler]],
         "supports_streaming" -> ToString[OptionValue[SupportsStreaming]],
         "disable_notification" -> ToString[OptionValue[DisableNotification]],
         "protect_content" -> ToString[OptionValue[ProtectContent]],
         "allow_paid_broadcast" -> ToString[OptionValue[AllowPaidBroadcast]],
         "message_effect_id" -> OptionValue[MessageEffectId],
         "reply_parameters" -> OptionValue[ReplyParameters],
         "reply_markup" -> OptionValue[ReplyMarkup]
     }],
     String,
     assoc = Association[
       Method -> "POST",
       "ContentType" -> Automatic (*  "application/x-www-form-urlencoded" *),
       "Body" -> {
         "chat_id" -> chatid,
         "video" -> video,
         "business_connection_id" -> ToString[OptionValue[BusinessConnectionId]],
         "message_thread_id" -> OptionValue[MessageThreadId],
         "duration" -> ToString[OptionValue[Duration]],
         "with" -> ToString[OptionValue[Width]],
         "height" -> ToString[OptionValue[Height]],
         "caption" -> OptionValue[Caption],
         "parse_mode" -> OptionValue[ParseMode],
         "caption_entities" -> OptionValue[CaptionEntities],
         "show_caption_above_media" -> ToString[OptionValue[ShowCaptionAboveMedia]],
         "has_spoiler" -> ToString[OptionValue[HasSpoiler]],
         "supports_streaming" -> ToString[OptionValue[SupportsStreaming]],
         "disable_notification" -> ToString[OptionValue[DisableNotification]],
         "protect_content" -> ToString[OptionValue[ProtectContent]],
         "allow_paid_broadcast" -> ToString[OptionValue[AllowPaidBroadcast]],
         "message_effect_id" -> OptionValue[MessageEffectId],
         "reply_parameters" -> OptionValue[ReplyParameters],
         "reply_markup" -> OptionValue[ReplyMarkup]
     }],
     _,
     Message[sendVideo::file, video];
     Throw[$Failed]
    ](* end Switch *);
    
    res = URLExecute[HTTPRequest[apiurl, assoc]];
    If[
     	Lookup[res, "ok"],
     	res,
     	Message[sendVideo::err, Lookup[res, "error_code"], Lookup[res, "description"]];
     	Throw[$Failed]
     ]
    ](* end Block *)](* end Catch *);
SyntaxInformation[sendVideo] = {"ArgumentsPattern" -> {_,_,OptionsPattern[]}};


sendAnimation::err = "Error code: `1`; Description: `2`";
sendAnimation::file = "`1` must be either a url or file ID string or an input file wrapped with File[\[Ellipsis]] construct.";
Options[sendAnimation] = {
   BusinessConnectionId -> "",
   MessageThreadId -> 0,
   Duration -> "",
   Width -> "",
   Height -> "",
   Thumbnail -> "",
   Caption -> "",
   ParseMode -> "",
   CaptionEntities -> "",
   ShowCaptionAboveMedia -> False,
   HasSpoiler -> False,
   DisableNotification -> False,
   ProtectContent -> False,
   AllowPaidBroadcast -> False,
   MessageEffectId -> "",
   ReplyParameters -> "",
   ReplyMarkup -> "",
   "MIMEType" -> "image/gif",
   "FileName" -> "animation.gif" (* MUST include file extension, i.e. ".gif" *),
   "BotToken" -> TelegramBotAPI`$BotToken
   };
sendAnimation[chatid_?(StringQ[#] || IntegerQ[#] &), animation_, OptionsPattern[]] := Catch[Block[
    {
     thumbnail = OptionValue[Thumbnail],
          
     apiurl, assoc, res
     },
    apiurl = URL[StringJoin[TelegramBotAPI`$TelegramURL, "bot", OptionValue["BotToken"], "/", "sendAnimation"]];
    
    Switch[
     Head[animation],
     File,
     assoc = Association[
       Method -> "POST",
       "ContentType" -> "multipart/form-data",
       "Body" -> {
         "chat_id" -> chatid,
         "animation" -> Association[
         	"Content" -> animation, 
         	"Name" -> OptionValue["FileName"], 
         	"MIMEType" -> OptionValue["MIMEType"]
         ],
         "business_connection_id" -> ToString[OptionValue[BusinessConnectionId]],
         "message_thread_id" -> OptionValue[MessageThreadId],
         "duration" -> ToString[OptionValue[Duration]],
         "with" -> ToString[OptionValue[Width]],
         "height" -> ToString[OptionValue[Height]],
         "thumbnail" -> If[Head[thumbnail] === File, thumbnail,""] (* Thumbnail is ignored if not specified as a File *),
         "caption" -> StringTake[ExportString[OptionValue[Caption], "JSON"], {2, -2}],
         "parse_mode" -> OptionValue[ParseMode],
         "caption_entities" -> OptionValue[CaptionEntities],
         "show_caption_above_media" -> ToString[OptionValue[ShowCaptionAboveMedia]],
         "has_spoiler" -> ToString[OptionValue[HasSpoiler]],
         "disable_notification" -> ToString[OptionValue[DisableNotification]],
         "protect_content" -> ToString[OptionValue[ProtectContent]],
         "allow_paid_broadcast" -> ToString[OptionValue[AllowPaidBroadcast]],
         "message_effect_id" -> OptionValue[MessageEffectId],
         "reply_parameters" -> OptionValue[ReplyParameters],
         "reply_markup" -> OptionValue[ReplyMarkup]
     }],
     String,
     assoc = Association[
       Method -> "POST",
       "ContentType" -> Automatic  (*  "application/x-www-form-urlencoded" *),
       "Body" -> {
         "chat_id" -> chatid,
         "animation" -> animation,
         "business_connection_id" -> ToString[OptionValue[BusinessConnectionId]],
         "message_thread_id" -> OptionValue[MessageThreadId],
         "duration" -> ToString[OptionValue[Duration]],
         "with" -> ToString[OptionValue[Width]],
         "height" -> ToString[OptionValue[Height]],
         "caption" -> OptionValue[Caption],
         "parse_mode" -> OptionValue[ParseMode],
         "caption_entities" -> OptionValue[CaptionEntities],
         "show_caption_above_media" -> ToString[OptionValue[ShowCaptionAboveMedia]],
         "has_spoiler" -> ToString[OptionValue[HasSpoiler]],
         "disable_notification" -> ToString[OptionValue[DisableNotification]],
         "protect_content" -> ToString[OptionValue[ProtectContent]],
         "allow_paid_broadcast" -> ToString[OptionValue[AllowPaidBroadcast]],
         "message_effect_id" -> OptionValue[MessageEffectId],
         "reply_parameters" -> OptionValue[ReplyParameters],
         "reply_markup" -> OptionValue[ReplyMarkup]
     }],
     _,
     Message[sendAnimation::file, animation];
     Throw[$Failed]
    ](* end Switch *);
    
    res = URLExecute[HTTPRequest[apiurl, assoc]];
    If[
     	Lookup[res, "ok"],
     	res,
     	Message[sendAnimation::err, Lookup[res, "error_code"], Lookup[res, "description"]];
     	Throw[$Failed]
     ]
    ](* end Block *)](* end Catch *);
SyntaxInformation[sendAnimation] = {"ArgumentsPattern" -> {_,_,OptionsPattern[]}};


sendVoice::err = "Error code: `1`; Description: `2`";
sendVoice::file = "`1` must be either a url or file ID string or an input file wrapped with File[\[Ellipsis]] construct.";
Options[sendVoice] = {
   BusinessConnectionId -> "",
   MessageThreadId -> 0,
   Caption -> "",
   ParseMode -> "",
   CaptionEntities -> "",
   Duration -> 100,
   DisableNotification -> False,
   ProtectContent -> False,
   AllowPaidBroadcast -> False,
   MessageEffectId -> "",
   ReplyParameters -> "",
   ReplyMarkup -> "",
   "MIMEType" -> "audio/ogg" (* or "audio/mp3" *),
   "BotToken" -> TelegramBotAPI`$BotToken
   };
sendVoice[chatid_?(StringQ[#] || IntegerQ[#] &), voice_, OptionsPattern[]] := Catch[Block[
    {
     apiurl, assoc, res
     },
    apiurl = URL[StringJoin[TelegramBotAPI`$TelegramURL, "bot", OptionValue["BotToken"], "/", "sendVoice"]];
    
    Switch[
     Head[voice],
     File,
     assoc = Association[
       Method -> "POST",
       "ContentType" -> "multipart/form-data",
       "Body" -> {
         "chat_id" -> chatid,
         "voice" -> Association[
         	"Content" -> voice,
         	"MIMEType" -> OptionValue["MIMEType"]
         ],
         "business_connection_id" -> ToString[OptionValue[BusinessConnectionId]],
         "message_thread_id" -> OptionValue[MessageThreadId],
         "caption" ->  StringTake[ExportString[OptionValue[Caption], "JSON"], {2, -2}],
         "parse_mode" -> OptionValue[ParseMode],
         "caption_entities" -> OptionValue[CaptionEntities],
         "duration" -> ToString[OptionValue[Duration]],
         "disable_notification" -> ToString[OptionValue[DisableNotification]],
         "protect_content" -> ToString[OptionValue[ProtectContent]],
         "allow_paid_broadcast" -> ToString[OptionValue[AllowPaidBroadcast]],
         "message_effect_id" -> OptionValue[MessageEffectId],
         "reply_parameters" -> OptionValue[ReplyParameters],
         "reply_markup" -> OptionValue[ReplyMarkup]
         }],
     String,
     assoc = Association[
       Method -> "POST",
       "ContentType" -> Automatic (*  "application/x-www-form-urlencoded" *),
       "Body" -> {
         "chat_id" -> chatid,
         "voice" -> voice,
   		 "business_connection_id" -> ToString[OptionValue[BusinessConnectionId]],
         "message_thread_id" -> OptionValue[MessageThreadId],
         "caption" ->  OptionValue[Caption],
         "parse_mode" -> OptionValue[ParseMode],
         "caption_entities" -> OptionValue[CaptionEntities],
         "duration" -> ToString[OptionValue[Duration]],
         "disable_notification" -> ToString[OptionValue[DisableNotification]],
         "protect_content" -> ToString[OptionValue[ProtectContent]],
         "allow_paid_broadcast" -> ToString[OptionValue[AllowPaidBroadcast]],
         "message_effect_id" -> OptionValue[MessageEffectId],
         "reply_parameters" -> OptionValue[ReplyParameters],
         "reply_markup" -> OptionValue[ReplyMarkup]
         }],
     _,
     Message[sendVoice::file, voice];
     Throw[$Failed]
     ](* end Switch *);
    
    res = URLExecute[HTTPRequest[apiurl, assoc]];
    If[
     	Lookup[res, "ok"],
     	res,
     	Message[sendVoice::err, Lookup[res, "error_code"], Lookup[res, "description"]];
     	Throw[$Failed]
     ]
    ](* end Block *)](* end Catch *);
SyntaxInformation[sendVoice] = {"ArgumentsPattern" -> {_,_,OptionsPattern[]}};

sendLocation::err = "Error code: `1`; Description: `2`";
Options[sendLocation] = {
   BusinessConnectionId -> "",
   MessageThreadId -> 0,
   HorizontalAccuracy -> "",
   LivePeriod -> "",
   Heading -> "",
   ProximityAlertRadius -> "",
   DisableNotification -> False,
   ProtectContent -> False,
   AllowPaidBroadcast -> False,
   MessageEffectId -> "",
   ReplyParameters -> "",
   ReplyMarkup -> "",
   "BotToken" -> TelegramBotAPI`$BotToken
   };
sendLocation[chatid_?(StringQ[#] || IntegerQ[#] &), latitude_?NumberQ, longitude_?NumberQ, OptionsPattern[]] := Catch[Block[
    { 
     apiurl, assoc, res
     },
    apiurl = URL[StringJoin[TelegramBotAPI`$TelegramURL, "bot", OptionValue["BotToken"], "/", "sendLocation"]];
    
    assoc = Association[
      Method -> "POST",
      "ContentType" -> Automatic (*  "application/x-www-form-urlencoded" *),
      "Body" -> {
        "chat_id" -> chatid,
        "latitude" -> ToString[latitude],
        "longitude" -> ToString[longitude],
        "business_connection_id" -> ToString[OptionValue[BusinessConnectionId]],
        "message_thread_id" -> OptionValue[MessageThreadId],
        "horizontal_accuracy" -> OptionValue[HorizontalAccuracy],
        "live_period" -> OptionValue[LivePeriod],
        "heading" -> OptionValue[Heading],
        "proximity_alert_radius" -> OptionValue[ProximityAlertRadius],
        "disable_notification" -> ToString[OptionValue[DisableNotification]],
        "protect_content" -> ToString[OptionValue[ProtectContent]],
        "allow_paid_broadcast" -> ToString[OptionValue[AllowPaidBroadcast]],
        "message_effect_id" -> OptionValue[MessageEffectId],
        "reply_parameters" -> OptionValue[ReplyParameters],
        "reply_markup" -> OptionValue[ReplyMarkup]
      }
    ];
    (*Print[assoc];*)
    res = URLExecute[HTTPRequest[apiurl, assoc]];
    If[
     	Lookup[res, "ok"],
     	res,
     	Message[sendLocation::err, Lookup[res, "error_code"], Lookup[res, "description"]];
     	Throw[$Failed]
     ]
    ](* end Block *)](* end Catch *);
SyntaxInformation[sendLocation] = {"ArgumentsPattern" -> {_,_,_,OptionsPattern[]}};

sendVenue::err = "Error code: `1`; Description: `2`";
Options[sendVenue] = {
   BusinessConnectionId -> "",
   MessageThreadId -> 0,
   FoursquareId -> "",
   FoursquareType -> "",
   GooglePlaceId -> "",
   GooglePlaceType -> "",
   DisableNotification -> False,
   ProtectContent -> False,
   AllowPaidBroadcast -> False,
   MessageEffectId -> "",
   ReplyParameters -> "",
   ReplyMarkup -> "",
   "BotToken" -> TelegramBotAPI`$BotToken
   };
sendVenue[chatid_?(StringQ[#] || IntegerQ[#] &), latitude_?NumberQ, longitude_?NumberQ, title_?StringQ, address_?StringQ, 
   OptionsPattern[]] := Catch[Block[
    {
     apiurl, assoc, res
     },
    apiurl = URL[StringJoin[TelegramBotAPI`$TelegramURL, "bot", OptionValue["BotToken"], "/", "sendVenue"]];
    
    assoc = Association[
      Method -> "POST",
      "ContentType" -> Automatic (*  "application/x-www-form-urlencoded" *),
      "Body" -> {
        "chat_id" -> chatid,
        "latitude" -> ToString[latitude],
        "longitude" -> ToString[longitude],
        "title" -> title,
        "address" -> address,
        "business_connection_id" -> ToString[OptionValue[BusinessConnectionId]],
        "message_thread_id" -> OptionValue[MessageThreadId],
        "foursquare_id" -> OptionValue[FoursquareId],
        "foursquare_type" -> OptionValue[FoursquareType],
        "google_place_id" -> OptionValue[GooglePlaceId],
        "google_place_type" -> OptionValue[GooglePlaceType],
        "disable_notification" -> ToString[OptionValue[DisableNotification]],
        "protect_content" -> ToString[OptionValue[ProtectContent]],
        "allow_paid_broadcast" -> ToString[OptionValue[AllowPaidBroadcast]],
        "message_effect_id" -> OptionValue[MessageEffectId],
        "reply_parameters" -> OptionValue[ReplyParameters],
        "reply_markup" -> OptionValue[ReplyMarkup]
    }];
        
    res = URLExecute[HTTPRequest[apiurl, assoc]];
    If[
     	Lookup[res, "ok"],
     	res,
     	Message[sendVenue::err, Lookup[res, "error_code"], Lookup[res, "description"]];
     	Throw[$Failed]
     ]
    ](* end Block *)](* end Catch *);
SyntaxInformation[sendVenue] = {"ArgumentsPattern" -> {_,_,_,_,_,OptionsPattern[]}};

sendContact::err = "Error code: `1`; Description: `2`";
Options[sendContact] = {
   BusinessConnectionId -> "",
   MessageThreadId -> 0,
   LastName -> "",
   VCard -> "",
   DisableNotification -> False,
   ProtectContent -> False,
   AllowPaidBroadcast -> False,
   MessageEffectId -> "",
   ReplyParameters -> "",
   ReplyMarkup -> "",
   "BotToken" -> TelegramBotAPI`$BotToken
   };
sendContact[chatid_?(StringQ[#] || IntegerQ[#] &), phonenumber_?StringQ, firstname_?StringQ, OptionsPattern[]] := 
  Catch[Block[
    {
     apiurl, assoc, res
    },
    
    apiurl = URL[StringJoin[TelegramBotAPI`$TelegramURL, "bot", OptionValue["BotToken"], "/", "sendContact"]];
    
    assoc = Association[
      Method -> "POST",
      "ContentType" -> Automatic (*  "application/x-www-form-urlencoded" *),
      "Body" -> {
        "chat_id" -> chatid,
        "phone_number" -> phonenumber,
        "first_name" -> firstname,
        "business_connection_id" -> ToString[OptionValue[BusinessConnectionId]],
        "message_thread_id" -> OptionValue[MessageThreadId],
        "last_name" -> OptionValue[LastName],
        "vcard" -> OptionValue[VCard],
        "disable_notification" -> ToString[OptionValue[DisableNotification]],
        "protect_content" -> ToString[OptionValue[ProtectContent]],
        "allow_paid_broadcast" -> ToString[OptionValue[AllowPaidBroadcast]],
        "message_effect_id" -> OptionValue[MessageEffectId],
        "reply_parameters" -> OptionValue[ReplyParameters],
        "reply_markup" -> OptionValue[ReplyMarkup]
    }];
        
    res = URLExecute[HTTPRequest[apiurl, assoc]];
    If[
     	Lookup[res, "ok"],
     	res,
     	Message[sendContact::err, Lookup[res, "error_code"], Lookup[res, "description"]];
     	Throw[$Failed]
     ]
    ](* end Block *)](* end Catch *);
SyntaxInformation[sendContact] = {"ArgumentsPattern" -> {_,_,_,OptionsPattern[]}};

sendChatAction::err = "Error code: `1`; Description: `2`";
Options[sendChatAction] = {
   BusinessConnectionId -> "",
   MessageThreadId -> 0,
   "BotToken" -> TelegramBotAPI`$BotToken
   };
sendChatAction[chatid_?(StringQ[#] || IntegerQ[#] &), action_?StringQ, OptionsPattern[]] := Catch[Block[
    {
     apiurl, assoc, res
     },
    apiurl = URL[StringJoin[TelegramBotAPI`$TelegramURL, "bot", OptionValue["BotToken"], "/", "sendChatAction"]];
    
    assoc = Association[
      Method -> "POST",
      "ContentType" -> Automatic (*  "application/x-www-form-urlencoded" *),
      "Body" -> ExportString[{
        "chat_id" -> chatid,
        "action" -> action,
        "business_connection_id" -> OptionValue[BusinessConnectionId],
        "message_thread_id" -> OptionValue[MessageThreadId] 
        },"JSON"]
    ];
        
    res = URLExecute[HTTPRequest[apiurl, assoc]];
    If[
     	Lookup[res, "ok"],
     	res,
     	Message[sendChatAction::err, Lookup[res, "error_code"], Lookup[res, "description"]];
     	Throw[$Failed]
     ]
    ](* end Block *)](* end Catch *);
SyntaxInformation[sendChatAction] = {"ArgumentsPattern" -> {_,_,OptionsPattern[]}};

setMessageReaction::err = "Error code: `1`; Description: `2`";
Options[setMessageReaction] = {
   Reaction -> "",
   IsBig -> False,
   "BotToken" -> TelegramBotAPI`$BotToken
   };
setMessageReaction[chatid_?(StringQ[#] || IntegerQ[#] &), messageid_?IntegerQ, OptionsPattern[]] := Catch[Block[
    {
     apiurl, assoc, res
     },
    apiurl = URL[StringJoin[TelegramBotAPI`$TelegramURL, "bot", OptionValue["BotToken"], "/", "setMessageReaction"]];
    
    assoc = Association[
      Method -> "POST",
      "ContentType" -> Automatic (*  "application/x-www-form-urlencoded" *),
      "Body" -> ExportString[{
        "chat_id" -> chatid,
        "message_id" -> messageid,
        "reaction" -> OptionValue[Reaction],
        "is_big" -> OptionValue[IsBig]
       },"JSON"]
    ];
        
    res = URLExecute[HTTPRequest[apiurl, assoc]];
    If[
     	Lookup[res, "ok"],
     	res,
     	Message[setMessageReaction::err, Lookup[res, "error_code"], Lookup[res, "description"]];
     	Throw[$Failed]
     ]
    ](* end Block *)](* end Catch *);
SyntaxInformation[setMessageReaction] = {"ArgumentsPattern" -> {_,_,OptionsPattern[]}};



getFile::err = "Error code: `1`; Description: `2`";
Options[getFile] = {
   "BotToken" -> TelegramBotAPI`$BotToken
   };
getFile[fileid_?StringQ,OptionsPattern[]] := Catch[Block[
    {   
     apiurl, assoc, res
     },
    apiurl = URL[StringJoin[TelegramBotAPI`$TelegramURL, "bot", OptionValue["BotToken"], "/", "getFile"]];
    
    assoc = Association[
      Method -> "GET",
      "ContentType" -> Automatic (*  "application/x-www-form-urlencoded" *),
      "Body" -> {
        "file_id" -> fileid
        }];
    
    res = Check[URLExecute[HTTPRequest[apiurl, assoc]], {"ok" -> False}];
    
    If[
     	Lookup[res, "ok"],
     	res,
     	Message[getFile::err, Lookup[res, "error_code"], Lookup[res, "description"]];
     	Throw[$Failed]
     ]
    ](* end Block *)](* end Catch*);
SyntaxInformation[getFile] = {"ArgumentsPattern" -> {_,OptionsPattern[]}};




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
    apiurl, assoc
    },
   apiurl = URL[StringJoin[TelegramBotAPI`$TelegramURL, "bot", OptionValue["BotToken"], "/", "answerCallbackQuery"]];
   
   assoc = Association[
     Method -> "POST",
     "ContentType" -> Automatic,
     "Body" -> {
       "callback_query_id" -> callbackqueryid,
       "text" ->  OptionValue[Text],
       "show_alert" -> ToString[OptionValue[ShowAlert]],
       "url" -> OptionValue[URL],
       "cache_time" -> OptionValue[CacheTime]
       }];
   URLExecute[HTTPRequest[apiurl, assoc]]
   ](* end Block *);
SyntaxInformation[answerCallbackQuery] = {"ArgumentsPattern" -> {_,OptionsPattern[]}};




End[] (* End Private Context *)

(Attributes[#] = {Protected, ReadProtected}) & /@ Names[Evaluate[$Context<>"*"]]

EndPackage[]