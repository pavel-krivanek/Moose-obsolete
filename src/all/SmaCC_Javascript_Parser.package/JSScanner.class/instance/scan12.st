generated
scan12
	self recordMatch: #(11).
	self step.
	currentCharacter == $*
		ifTrue: [ ^ self recordAndReportMatch: #(8) ].
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(76) ].
	^ self reportLastMatch