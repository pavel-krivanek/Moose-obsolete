testing class hierarchy
kindOfSubclass
	"Answer a String that is the keyword that describes the receiver's kind of subclass,
	 either a regular subclass, a variableSubclass, a variableByteSubclass,
	 a variableWordSubclass, a weakSubclass, an ephemeronSubclass or an immediateSubclass.
	 c.f. typeOfClass"
	^self owner isVariable
		ifTrue:
			[self layout isBitsLayout
				ifTrue:
					[self layout isByteLayout
						ifTrue: [' variableByteSubclass: ']
						ifFalse: [' variableWordSubclass: ']]
				ifFalse:
					[self layout isWeakLayout
						ifTrue: [' weakSubclass: ']
						ifFalse: [' variableSubclass: ']]]
		ifFalse:
			[self layout isImmediateLayout 
				ifTrue: [' immediateSubclass: ']
				ifFalse:
					[self layout isEphemeronLayout 
						ifTrue: [' ephemeronSubclass: ']
						ifFalse: [' subclass: ']]]