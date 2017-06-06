generated
scan21
	[ self recordMatch: #(102).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan22 ].
	currentCharacter isAlphaNumeric
		or: [ '$_' includes: currentCharacter ] ] whileTrue.
	^ self reportLastMatch