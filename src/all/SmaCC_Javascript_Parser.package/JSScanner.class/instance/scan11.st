generated
scan11
	self step.
	currentCharacter == Character cr
		ifTrue: [ self step.
			currentCharacter == $'
				ifTrue: [ ^ self scan10 ].
			currentCharacter == $\
				ifTrue: [ ^ self scan11 ].
			(currentCharacter <= Character newPage
				or: [ (currentCharacter between: (Character value: 14) and: $&)
						or: [ (currentCharacter between: $( and: $[)
								or: [ currentCharacter >= $] ] ] ])
				ifTrue: [ ^ self scan9 ].
			^ self reportLastMatch ].
	^ self scan9