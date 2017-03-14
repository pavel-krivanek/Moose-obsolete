initialize-release
initializeWith: stringText inGroupBoxNamed: groupBoxName

	self populateContents: {self newGroupboxNamed: groupBoxName  With: (self newLabel: stringText) }