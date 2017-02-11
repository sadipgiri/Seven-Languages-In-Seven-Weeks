;Write a function called (collection-type col) 
;that returns :list, :map, or :vector based on the type of collection col

; defining a function a function according to the given names and ideas too

(defn 
	collection-type				; function name 
	[input]						; taking an input
	(cond						; conditional statement
		(list? input) :list		; checks whether its list or not
        (map? input) :map		; checks whether its map or not
        (vector? input) :vector	; checks whether its vector or not
	)
) 

; lets check this out
(def vector1 [1,34,3,34,34])	; checking whether it's vector or not