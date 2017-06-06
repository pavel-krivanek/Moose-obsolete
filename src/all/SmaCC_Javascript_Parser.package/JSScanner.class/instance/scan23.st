generated
scan23
	[ self step.
	currentCharacter == $\
		ifTrue: [ self step.
			(currentCharacter <= Character tab
				or: [ (currentCharacter between: Character pageUp and: Character newPage)
						or: [ currentCharacter >= (Character value: 14) ] ])
				ifTrue: [ ^ self scan23 ].
			^ self reportLastMatch ].
	currentCharacter == $]
		ifTrue: [ ^ self scan19 ].
	true ] whileTrue