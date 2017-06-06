generated
scan18X3
	currentCharacter == $/
		ifTrue:
			[ ^ self scan18X2 ].
	currentCharacter == $=
		ifTrue:
			[ ^ self scan18X1 ].
	currentCharacter == $[
		ifTrue: [ ^ self scan23 ].
	currentCharacter == $\
		ifTrue: [ ^ self scan24 ].
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ (currentCharacter between: (Character value: 14) and: $))
						or: [ (currentCharacter between: $+ and: $.)
								or: [ (currentCharacter between: $0 and: $<)
										or: [ (currentCharacter between: $> and: $Z)
												or: [ currentCharacter >= $] ] ] ] ] ] ])
		ifTrue: [ ^ self scan19 ].
	^ self reportLastMatch