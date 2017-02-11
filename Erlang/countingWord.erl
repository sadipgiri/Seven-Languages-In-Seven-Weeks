-module(countingWord).
-export([countingWord/1]).	% assigning one argument for passing a sentence.


countingWord([]) -> 0;		% empty will return zero
countingWord(Sentences) -> counting(Sentences, 1).


counting([], Counting) -> Counting;
counting([32|TailPart], Counting) -> counting(TailPart, Counting + 1);			% here adding one every time it finds the word
counting([_|TailPart], Counting) -> counting(TailPart, Counting).
