initialization
initializeOperators

	| values |
	operators := Dictionary new.
	values := #(	'>>>=' '>>>' '>>=' '>>' '>=' '>'	'<<=' '<<' '<=' '<'	'++' '+=' '+'	'--' '-=' '-'	'&&' '&=' '&'
					'||' '|=' '|'	'*=' '*'	'%=' '%'	'/=' '/'	'^=' '^'	'!=' '!'	'==' '='	'~'	'?'	':'	'@' ).
	" @ ? perhaps for annotation but not in the doc "
	values do: [:eachOperator |
		operators at: eachOperator 
			put: (PP2UnresolvedNode named: ('operator', eachOperator asString))		
		].
	
	operators  keysAndValuesDo:  [:key :value |
		(operators at: key) def: (key asPParser)]