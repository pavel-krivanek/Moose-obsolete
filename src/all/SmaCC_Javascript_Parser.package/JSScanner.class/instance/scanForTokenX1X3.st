generated
scanForTokenX1X3
	currentCharacter == $\
		ifTrue: [ ^ self scan6 ].
	currentCharacter == $]
		ifTrue: [ ^ self recordAndReportMatch: #(25) ].
	currentCharacter == $^
		ifTrue: [ ^ self scan31 ].
	currentCharacter == $`
		ifTrue: [ ^ self scan32 ].
	currentCharacter == ${
		ifTrue: [ ^ self recordAndReportMatch: #(28) ].
	currentCharacter == $|
		ifTrue: [ ^ self scan40 ].
	currentCharacter == $}
		ifTrue:
			[ ^ self scanForTokenX1X1 ].
	currentCharacter == $~
		ifTrue: [ ^ self recordAndReportMatch: #(12) ].
	currentCharacter isDigit
		ifTrue: [ ^ self scan27 ].
	currentCharacter isSeparator
		ifTrue:
			[ ^ self scanForTokenX1X2 ].
	(currentCharacter isLetter or: [ '$_' includes: currentCharacter ])
		ifTrue: [ ^ self scan5 ].
	^ self reportLastMatch