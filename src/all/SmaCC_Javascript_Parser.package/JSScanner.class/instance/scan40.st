generated
scan40
	self recordMatch: #(14).
	self step.
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(75) ].
	currentCharacter == $|
		ifTrue: [ ^ self recordAndReportMatch: #(41) ].
	^ self reportLastMatch