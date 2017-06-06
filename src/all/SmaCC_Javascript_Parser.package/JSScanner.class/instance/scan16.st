generated
scan16
	[ self recordMatch: #(101).
	self step.
	currentCharacter isDigit ] whileTrue.
	('Ee' includes: currentCharacter)
		ifTrue: [ ^ self scan17 ].
	^ self reportLastMatch