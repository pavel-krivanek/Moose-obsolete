generated
scanForTokenX12
	self recordMatch: #(50).
	self step.
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(63) ].
	^ self reportLastMatch