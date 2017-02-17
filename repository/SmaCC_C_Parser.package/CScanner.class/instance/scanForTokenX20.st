generated
scanForTokenX20
	currentCharacter == $.
		ifTrue:
			[ ^ self scanForTokenX9 ].
	currentCharacter == $/
		ifTrue:
			[ ^ self scanForTokenX8 ].
	currentCharacter == $0
		ifTrue:
			[ ^ self scanForTokenX1 ].
	currentCharacter == $:
		ifTrue:
			[ ^ self scanForTokenX16 ].
	currentCharacter == $;
		ifTrue: [ ^ self recordAndReportMatch: #(60) ].
	currentCharacter == $<
		ifTrue:
			[ ^ self scanForTokenX3 ].
	currentCharacter == $=
		ifTrue:
			[ ^ self scanForTokenX15 ].
	currentCharacter == $>
		ifTrue:
			[ ^ self scanForTokenX6 ].
	currentCharacter == $?
		ifTrue: [ ^ self recordAndReportMatch: #(15) ].
	currentCharacter == $L
		ifTrue:
			[ ^ self scanForTokenX2 ].
	currentCharacter == $[
		ifTrue: [ ^ self recordAndReportMatch: #(79) ].
	currentCharacter == $]
		ifTrue: [ ^ self recordAndReportMatch: #(80) ].
	^ self scanForTokenX19