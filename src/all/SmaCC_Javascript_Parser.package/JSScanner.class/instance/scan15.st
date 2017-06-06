generated
scan15
	self recordMatch: #(44).
	self step.
	currentCharacter == $.
		ifTrue: [ self step.
			currentCharacter == $.
				ifTrue: [ ^ self recordAndReportMatch: #(26) ].
			^ self reportLastMatch ].
	currentCharacter isDigit
		ifTrue: [ ^ self scan16 ].
	^ self reportLastMatch