initialize-release
initialize: aCollectionOfLabels

	| elements |
	self actionModel: self.
	 
	self allCheckboxContents: (aCollectionOfLabels collect: [:each | true]). 
	allCheckboxes := OrderedCollection new.
	allCheckboxLabels := aCollectionOfLabels.
	aCollectionOfLabels do: [:each |
		allCheckboxes add:
			(self 
				newCheckboxFor: (ValueHolder new contents: true) 
				getSelected: #contents 
				setSelected: #contents: 
				label: each).
		].
	
	elements := self addVerticalSeparatorAtTheMiddleOf: allCheckboxes .
	
	self contents:  {self newRowWith: elements} .
	