generated
scan8
	self recordMatch: #(15).
	self step.
	currentCharacter == $&
		ifTrue: [ ^ self recordAndReportMatch: #(35) ].
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(71) ].
	^ self reportLastMatch