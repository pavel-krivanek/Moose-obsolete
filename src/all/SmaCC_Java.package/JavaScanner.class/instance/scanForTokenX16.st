generated
scanForTokenX16
	self recordMatch: #(72).
	self step.
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(68) ].
	^ self reportLastMatch