// What is the difference between =, :=, ::=? When would you use each one?

/*
These three are assignment operators.
Where, operator "=" is used to assign value to slot if it exists, otherwise shows error.
And, operator ":=" is uesd to create slot and assigns value.
Similarly, operator "::=" is in the same way as the given operator ":=".

Although I haven't figured out the difference between ":=" and "::=" exactly, I think "::=" is used to create setters. 
That is, use of "::=" in creating setters will help us to read the code nicely.

*/

// use of ::= to create setters which I think will make the code more readable.
// For an instance:

Humans := Object clone do (
    legs ::= 2    // creates legs slot and set it as 2
    eyes ::= 2    // creates eyes slot and set it as 2
)