% These are the facts that I am creating 
likes(person1, person2).
likes(someone1, someone2).
likes(thatone1, thatone2).

% creating a rule that I am forming in accordance with the above facts
relationship(X,Y) :- 
likes(X,Y),
likes(Y,X).

% friendship rule is also created
friendship(X,Y) :-
likes(X, Y);
likes(Y,X).