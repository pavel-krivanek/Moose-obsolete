generated
scan10
	self recordMatch: #(100).
	self step.
	currentCharacter == $'
		ifTrue: [ ^ self scan9 ].
	^ self reportLastMatch