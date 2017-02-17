public - bar shape
barChartUsing: barLabelFactory
	"Draw an histogram with title"
	| v |
	v := self barShape.
	elementActions add: [ :someElements | 
		| lbl |
		self selectElementsForAddingBarTitle doWithIndex: [ :e :index |
			| modelToBeUsed |
			modelToBeUsed := self getModelForElement: e atIndex: index.
			lbl := barLabelFactory createLabelForModel: modelToBeUsed.
			TRConstraint move: lbl below: e.
			lbl translateBy: (lbl width / -2 @ 0) + (5 @ 0).
			elements anyOne view add: lbl.
		] ].
	 ^ v