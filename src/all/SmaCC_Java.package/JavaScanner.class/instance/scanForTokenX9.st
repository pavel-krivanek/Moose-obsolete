generated
scanForTokenX9
	self recordMatch: #(90).
	self step.
	currentCharacter == $+
		ifTrue: [ ^ self recordAndReportMatch: #(94) ].
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(69) ].
	^ self reportLastMatch