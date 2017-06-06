generated
scan27
	[ self recordMatch: #(101).
	self step.
	currentCharacter == $.
		ifTrue: [ ^ self scan16 ].
	currentCharacter isDigit ] whileTrue.
	('Ee' includes: currentCharacter)
		ifTrue: [ ^ self scan17 ].
	^ self reportLastMatch