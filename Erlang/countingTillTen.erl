-module(countingTillTen).
-export([countingTillTen/0]).	% it doesnot take any argument.


countingTillTen() -> counting(0). % counting 0 if nothing is given.


counting(10) -> 10;	% returning ten if it's ten.
counting(Count) -> counting(Count + 1).	% adding one in every steps.



