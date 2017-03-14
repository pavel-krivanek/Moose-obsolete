generated
scanForTokenX19
	currentCharacter == $^
		ifTrue:
			[ ^ self scanForTokenX14 ].
	currentCharacter == ${
		ifTrue: [ ^ self recordAndReportMatch: #(81) ].
	currentCharacter == $|
		ifTrue:
			[ ^ self scanForTokenX7 ].
	currentCharacter == $}
		ifTrue: [ ^ self recordAndReportMatch: #(82) ].
	currentCharacter == $~
		ifTrue: [ ^ self recordAndReportMatch: #(31) ].
	currentCharacter isDigit
		ifTrue: [ ^ self scan10 ].
	(currentCharacter isSeparator
		or: [ currentCharacter == Character pageUp ])
		ifTrue:
			[ ^ self scanForTokenX13 ].
	((currentCharacter between: $A and: $K)
		or: [ (currentCharacter between: $M and: $Z)
				or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ])
		ifTrue:
			[ self scanForTokenX4 ].
	^ self reportLastMatch