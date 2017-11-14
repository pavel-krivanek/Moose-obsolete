generated
scanForTokenX17
	self recordMatch: #(87).
	self step.
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(49) ].
	^ self reportLastMatch