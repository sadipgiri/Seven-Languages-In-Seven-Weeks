-- Write a function that takes a list and returns the same list in reverse.


-- defining the module
module Main where


    reversedList :: [n] -> [n]      --here's the reverse List

    reversedList [] = []            --also defining what its an empty list

    -- using head and tail approach for reversing the list
    -- That is breaking the given list and changing the head and tail portion recursively.

    reversedList(head:tail) = reversedList(tail) ++ [head]    