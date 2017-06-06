generated
scan34
	self step.
	currentCharacter == $`
		ifTrue: [ ^ self recordAndReportMatch: #(103) ].
	currentCharacter == ${
		ifTrue: [ ^ self recordAndReportMatch: #(104) ].
	^ self scan33