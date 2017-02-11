/*to know the length of the list*/

length(0, []).
length(Length, [Head|Tail]) :- length(TailLength, Tail), Length is TailLength + 1.


/*to do sum of the elements of the lists*/

sum(0, []). 
sum(Total, [Head|Tail]) :- sum(Sum, Tail), Total is Head + Sum.
 
/*now for the average of those elements in the given lists*/

average(Average, List) :-  sum(Sum, List), length(Length, List), Average is Sum/Length.