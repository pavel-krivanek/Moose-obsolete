initialize-release
initialize: aCollectionOfLabels inGroupBoxNamed: aName

	| elements |
	self actionModel: self. 
	self allCheckboxContents: (aCollectionOfLabels collect: [:each | true]).
	allCheckboxes := OrderedCollection new.
	allCheckboxLabels := aCollectionOfLabels.
	aCollectionOfLabels do: [:each |
		self 
			newCheckboxFor: (ValueHolder new contents: true) 
			getSelected: #contents 
			setSelected: #contents: 
			label: each.
		].
	
	elements := self addVerticalSeparatorAtTheMiddleOf: allCheckboxes .
	
	self contents: {self newGroupboxNamed: aName  WithAll: elements}
	