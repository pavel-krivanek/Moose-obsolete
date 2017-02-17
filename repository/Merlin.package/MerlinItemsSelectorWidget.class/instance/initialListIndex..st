control - initial list 
initialListIndex: anInteger

	anInteger > 0
		ifTrue: [
			self addButtonMorph enable.
			self selectionListIndex: 0.  
			]
		ifFalse: [
			self addButtonMorph disable.
			].  
		
	self wizardPart initialListIndex: anInteger.
	self widgetStateChanged