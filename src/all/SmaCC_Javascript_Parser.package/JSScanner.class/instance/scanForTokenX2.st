generated
scanForTokenX2
	[ self recordMatch: #(99).
	self step.
	currentCharacter isSeparator ] whileTrue.
	^ self reportLastMatch