public - bar shape
barChartWithBarCenteredTitle: aBlockOrSymbol color: aColor
	"Draw a bar chart with title"
	self barShape.
	elementActions add: [ :someElements | 
		| lbl |
		self selectElementsForAddingBarTitle doWithIndex: [ :e :index |
			| modelToBeUsed |
			modelToBeUsed := self getModelForElement:e atIndex: index.
			lbl := (RTLabel new text: aBlockOrSymbol; color: aColor) 
						elementOn: modelToBeUsed.
			TRConstraint move: lbl below: e.
			elements anyOne view add: lbl.
		] ].
	 