generated
scanForTokenX13
	self recordMatch: #(2).
	self step.
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(54) ].
	^ self reportLastMatch