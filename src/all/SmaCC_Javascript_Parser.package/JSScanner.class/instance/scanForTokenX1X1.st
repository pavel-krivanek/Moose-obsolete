generated
scanForTokenX1X1
	self recordMatch: #(95).
	self step.
	currentCharacter == $$
		ifTrue: [ ^ self scan42 ].
	currentCharacter == $\
		ifTrue: [ ^ self scan43 ].
	currentCharacter == $`
		ifTrue: [ ^ self recordAndReportMatch: #(106) ].
	^ self scan41