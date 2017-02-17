generated
scanForTokenX3
	[ self recordMatch: #(25).
	self step.
	currentCharacter isMSESeparator
		or: [ currentCharacter == Character pageUp ] ] whileTrue.
	^ self reportLastMatch