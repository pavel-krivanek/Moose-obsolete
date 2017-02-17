private
adjustPosition: order
	| p1 p2 cmin cmax |
	p1 := cursorMin position.
	p2 := cursorMax position.
	order ifTrue: [ cmin:= cursorMin. cmax:=cursorMax ]
		ifFalse: [ cmin:=cursorMax. cmax:=cursorMin ].
	p1 x > p2 x ifTrue: [ cmin translateTo: (cmax position x @ cmin position y). ].