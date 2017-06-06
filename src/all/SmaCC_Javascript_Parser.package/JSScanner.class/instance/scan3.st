generated
scan3
	self recordMatch: #(100).
	self step.
	currentCharacter == $"
		ifTrue: [ ^ self scan2 ].
	^ self reportLastMatch