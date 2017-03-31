tests
testSlot
	| fClass fMethod |
	fClass := FAMIXClass new.
	fMethod := FAMIXMethod new.
	fMethod parentType: fClass.
	self assert: (fClass methods at: 1) equals: fMethod