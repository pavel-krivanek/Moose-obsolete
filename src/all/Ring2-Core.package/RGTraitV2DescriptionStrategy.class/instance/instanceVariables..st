accessing
instanceVariables: aCollectionOfSymbols

	"specify instance variable names"

	(self owner hasUnresolved: #layout)
		ifTrue: [ self layout: (RGFixedLayout parent: self)].
		
	(self layout isPointerLayout not and: [ aCollectionOfSymbols isEmpty ])
		ifTrue: [ ^ self ].
		
	self layout cleanSlots.

	aCollectionOfSymbols do: [ :instVarName |
		layout addSlot: (RGInstanceVariableSlot named: instVarName asSymbol parent: self)].