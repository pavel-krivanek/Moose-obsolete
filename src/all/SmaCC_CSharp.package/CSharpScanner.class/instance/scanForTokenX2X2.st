generated
scanForTokenX2X2
	currentCharacter == $?
		ifTrue: [ ^ self scan25 ].
	currentCharacter == $@
		ifTrue: [ ^ self scan32 ].
	currentCharacter == $[
		ifTrue: [ ^ self recordAndReportMatch: #(76) ].
	currentCharacter == $]
		ifTrue: [ ^ self recordAndReportMatch: #(66) ].
	currentCharacter == $^
		ifTrue: [ ^ self scan27 ].
	currentCharacter == $`
		ifTrue: [ ^ self scan28 ].
	currentCharacter == ${
		ifTrue: [ ^ self recordAndReportMatch: #(52) ].
	currentCharacter == $|
		ifTrue: [ ^ self scan29 ].
	currentCharacter == $}
		ifTrue: [ ^ self scan33 ].
	currentCharacter == $~
		ifTrue: [ ^ self recordAndReportMatch: #(2) ].
	(currentCharacter isLetter or: [ currentCharacter == $_ ])
		ifTrue:
			[ self scanForTokenX2X1 ].
	^ self reportLastMatch