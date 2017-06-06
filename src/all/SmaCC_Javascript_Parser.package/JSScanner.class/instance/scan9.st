generated
scan9
	[ self step.
	currentCharacter == $'
		ifTrue: [ ^ self scan10 ].
	currentCharacter == $\
		ifTrue: [ ^ self scan11 ].
	currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ (currentCharacter between: (Character value: 14) and: $&)
						or: [ (currentCharacter between: $( and: $[)
								or: [ currentCharacter >= $] ] ] ] ] ] whileTrue.
	^ self reportLastMatch