highlighting
unhighlightElements: someElements
	(someElements select: [ :e | selectElement rtValue: e ]) do: [ :e | | shape |
		shape := e trachelShape class = TRCompositeShape 
			ifTrue: [ e trachelShape firstShape ]
			ifFalse: [ e trachelShape ]. 
		shape color: (shape color alpha: self transparencyWhenNonHighlighted ) ].