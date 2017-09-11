generated
scanForTokenX14
	self recordMatch: #(15).
	self step.
	currentCharacter == $:
		ifTrue: [ ^ self recordAndReportMatch: #(92) ].
	^ self reportLastMatch