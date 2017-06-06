generated
scan42
	self step.
	currentCharacter == $`
		ifTrue: [ ^ self recordAndReportMatch: #(106) ].
	currentCharacter == ${
		ifTrue: [ ^ self recordAndReportMatch: #(105) ].
	^ self scan41