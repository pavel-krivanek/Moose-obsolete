examples
expressionParser
	"Simple demo of scripting an expression parser."
	
	| mul prim add dec |
	add := PPUnresolvedParser new.
	mul := PPUnresolvedParser new.
	prim := PPUnresolvedParser new.
	dec := ($0 to: $9) asParser.
	add def: (mul , $+ asParser , add)
		/ mul.
	mul def: (prim , $* asParser , mul)
		/ prim.
	prim def: ($( asParser , add , $) asParser)
		/ dec.
	^ add end