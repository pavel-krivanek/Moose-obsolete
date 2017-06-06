generated
scan7
	self recordMatch: #(10).
	self step.
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(77) ].
	^ self reportLastMatch