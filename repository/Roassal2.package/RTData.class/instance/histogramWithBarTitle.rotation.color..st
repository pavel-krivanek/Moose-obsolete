obsolete
histogramWithBarTitle: aBlockOrSymbol rotation: rotationInDegree color: aColor
	"Obsolete: use #barChartWithBarTitle: instead"
	"Draw an histogram with title"
	self barShape.
	elementActions add: [ :elems | 
		| lbl |
		elems do: [ :e |
			lbl := (RTLabel new text: aBlockOrSymbol; color: aColor) elementOn: e model.
			lbl rotateByDegrees: rotationInDegree.
			TRConstraint move: lbl below: e.
			lbl translateBy: (lbl width / -2 @ 0) + (5 @ 0).
			elems anyOne view add: lbl.
		] ].
	 