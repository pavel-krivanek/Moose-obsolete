generated
scan14
	self recordMatch: #(18).
	self step.
	currentCharacter == $-
		ifTrue: [ ^ self recordAndReportMatch: #(39) ].
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(79) ].
	^ self reportLastMatch