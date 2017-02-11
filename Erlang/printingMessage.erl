-module(printingMessage).
-export([printingMessage/1]).	% assigning one argument



printingMessage(success) -> "success";	% if success
printingMessage({error, Message}) -> "error: " ++ Message.	% error than printing error message


