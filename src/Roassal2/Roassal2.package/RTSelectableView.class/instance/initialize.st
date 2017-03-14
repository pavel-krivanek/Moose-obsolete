initialization
initialize
	super initialize.
	self color: Color red.
	self when: RTSelectionStart do: [ self removeSelection: view elements ].
	self
		when: RTSelectionChange
		do: [ :e | self highlight: (e group select: [ :each | each model isNotNil ]) ]