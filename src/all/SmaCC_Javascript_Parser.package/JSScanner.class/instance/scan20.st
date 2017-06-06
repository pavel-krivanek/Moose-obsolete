generated
scan20
	self recordMatch: #(102).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan22 ].
	(currentCharacter isLetter or: [ '$_' includes: currentCharacter ])
		ifTrue: [ ^ self scan21 ].
	^ self reportLastMatch