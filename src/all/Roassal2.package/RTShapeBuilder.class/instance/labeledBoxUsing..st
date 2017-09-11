shapes
labeledBoxUsing: aValueOrABlockOrASymbol
	"
	A box with a label in it.

	b := RTMondrian new.
	b shape labeledBoxUsing: [:value | 'Value ', value asString ].
	b nodes: Dictionary withAllSubclasses.
	b edges connectFrom: #superclass.
	b layout sugiyama.
	b
	
	Another example
	
b := RTMondrian new.
b shape labeledBoxUsing: [:value | 'Value ', value asString ].

b nodes: (1 to: 100).
b layout grid.
b
	"
	self composite: [ :comp |
		comp add: RTBox new.
		comp add: (RTLabel new text: aValueOrABlockOrASymbol).
		comp allOfSameSizeWithPadding.
		 ]