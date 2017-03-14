control - selection list
selectionListIndex: anInteger

	anInteger > 0
		ifTrue: [
			self removeButtonMorph enable.
			self initialListIndex: 0.
			]
		ifFalse: [
			self removeButtonMorph disable
			].
	self wizardPart selectionListIndex: anInteger.
	self widgetStateChanged 