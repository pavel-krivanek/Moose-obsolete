generated
scan18
	self recordMatch: #(93).
	self step.
	currentCharacter == $*
		ifTrue: [ ^ self scan25 ].
	^ self scan18X3