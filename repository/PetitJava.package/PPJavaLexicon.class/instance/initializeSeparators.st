initialization
initializeSeparators

	| values |
	separators := Dictionary new.
	values := #( '(' ')' '{' '}' '[' ']' ';' ',' '.' ).
	
	values do: [:eachSeparator |
		separators at: eachSeparator 
			put: (PP2UnresolvedNode named: ('separator', eachSeparator asString))		
		].
	
	separators  keysAndValuesDo:  [:key :value |
		(separators at: key) def: (key asPParser)]