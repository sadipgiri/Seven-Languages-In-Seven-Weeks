-module(factorial).
-export([factorial/1]).	% factorial takes only one argument



factorial(0) -> 1;	% factorial of zero is one
factorial(N) -> N * factorial(N - 1).	% using recursive technique to find out the factorial of the given number.
