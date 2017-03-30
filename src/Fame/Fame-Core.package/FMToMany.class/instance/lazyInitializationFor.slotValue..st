initialization
lazyInitializationFor: anObject slotValue: aSlotValue

	| newLink |
	
	aSlotValue ifNotNil: [ ^ aSlotValue ].
	
	newLink := (FMSlotMultivalueLink on: anObject slot: self).

	thisContext object: anObject instVarAt: index put: newLink.
	
	^ newLink

