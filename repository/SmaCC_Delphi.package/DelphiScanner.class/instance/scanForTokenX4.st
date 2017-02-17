generated
scanForTokenX4
	[ self recordMatch: #(141).
	self step.
	currentCharacter isXMLWhitespace
		or: [ currentCharacter == Character pageUp
				or: [ currentCharacter =
						(Character value: 26) ] ] ] whileTrue.
	^ self reportLastMatch