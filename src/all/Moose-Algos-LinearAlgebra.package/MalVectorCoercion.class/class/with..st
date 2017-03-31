initialize-release
with: aNumber
	
	^(aNumber isKindOf: MalVector)
		ifTrue: [aNumber]
		ifFalse:
			[(self basicNew)
				setNumber: aNumber;
				yourself]