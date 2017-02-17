examples
expressionInterpreter
	"Same as #expressionInterpreter but with semantic actions."
	
	| mul prim add dec |
	add := PPUnresolvedParser new.
	mul := PPUnresolvedParser new.
	prim := PPUnresolvedParser new.
	dec := ($0 to: $9) asParser ==> [ :token | token codePoint - $0 codePoint ].
	add def: ((mul , $+ asParser , add) ==> [ :nodes | (nodes at: 1) + (nodes at: 3) ])
		/ mul.
	mul def: ((prim , $* asParser , mul) ==> [ :nodes | (nodes at: 1) * (nodes at: 3) ])
		/ prim.
	prim def: (($( asParser , add , $) asParser) ==> [ :nodes | nodes at: 2 ])
		/ dec.
	^ add end