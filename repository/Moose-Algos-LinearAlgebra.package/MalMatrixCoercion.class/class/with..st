initialize-release
with: aNumber
	
	^(aNumber isKindOf: MalMatrix)
		ifTrue: [aNumber]
		ifFalse:
			[(self basicNew)
				setNumber: aNumber;
				yourself]