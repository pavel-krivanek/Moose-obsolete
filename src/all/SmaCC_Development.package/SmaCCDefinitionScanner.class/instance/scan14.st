generated
scan14
	[ self step.
	currentCharacter == $}
		ifTrue: [ ^ self recordAndReportMatch: #(36) ].
	currentCharacter isDigit ] whileTrue.
	^ self reportLastMatch