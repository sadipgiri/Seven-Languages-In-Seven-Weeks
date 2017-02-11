%Consider a list of keyword-value tuples, such as  [{erlang, "a functional language"}, {ruby, "an OO language"}]. 
%Write a function that accepts the list and a keyword and returns the associated value for the keyword.

-module(list_value).
-export([value/2]).

value(List, Word) -> searching(List, Word).

searching([{Word, Value}|_], Word) -> Value;
searching([_|Tail], Word) -> searching(Tail, Word).
