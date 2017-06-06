generated
scan13
	self recordMatch: #(40).
	self step.
	currentCharacter == $+
		ifTrue: [ ^ self recordAndReportMatch: #(45) ].
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(80) ].
	^ self reportLastMatch