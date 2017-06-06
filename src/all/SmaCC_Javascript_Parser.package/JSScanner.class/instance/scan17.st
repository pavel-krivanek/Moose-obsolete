generated
scan17
	self step.
	currentCharacter isDigit
		ifTrue: [ [ self recordMatch: #(101).
			self step.
			currentCharacter isDigit ] whileTrue.
			^ self reportLastMatch ].
	('+-' includes: currentCharacter)
		ifTrue: [ self step.
			currentCharacter isDigit
				ifTrue: [ [ self recordMatch: #(101).
					self step.
					currentCharacter isDigit ] whileTrue ] ].
	^ self reportLastMatch