generated
scan18X1
	self recordMatch: #(94).
	self step.
	currentCharacter == $/
		ifTrue: [ ^ self scan20 ].
	currentCharacter == $[
		ifTrue: [ ^ self scan23 ].
	currentCharacter == $\
		ifTrue: [ ^ self scan24 ].
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ (currentCharacter between: (Character value: 14) and: $.)
						or: [ (currentCharacter between: $0 and: $Z)
								or: [ currentCharacter >= $] ] ] ] ])
		ifTrue: [ ^ self scan19 ].
	^ self reportLastMatch