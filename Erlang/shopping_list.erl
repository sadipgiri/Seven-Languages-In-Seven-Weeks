%Consider a shopping list that looks like  [{item, quantity, price}, ...]. 
%Write a list comprehension that builds a list of items of the form [{item, total_price}, ...] 
%where total_price is quantity times the price.

--module (shopping_list).
--export ([total_price/1]).

total_price(shoppingList) -> [{Item, Quantity * Price} || {Item, Quantity, Price} <- shoppingList].

%shopping_list: total_price([{"Chocolate", 10, 100}, {"Ice-Cream", 2, 200}]).