generated
scanForTokenX17
	self recordMatch: #(87).
	self step.
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(54) ].
	^ self reportLastMatch