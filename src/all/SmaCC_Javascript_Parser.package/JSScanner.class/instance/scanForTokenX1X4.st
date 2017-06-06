generated
scanForTokenX1X4
	currentCharacter == $,
		ifTrue: [ ^ self recordAndReportMatch: #(27) ].
	currentCharacter == $-
		ifTrue: [ ^ self scan14 ].
	currentCharacter == $.
		ifTrue: [ ^ self scan15 ].
	currentCharacter == $/
		ifTrue: [ ^ self scan18 ].
	currentCharacter == $0
		ifTrue: [ ^ self scan26 ].
	currentCharacter == $:
		ifTrue: [ ^ self recordAndReportMatch: #(29) ].
	currentCharacter == $;
		ifTrue: [ ^ self recordAndReportMatch: #(92) ].
	currentCharacter == $<
		ifTrue: [ ^ self scan28 ].
	currentCharacter == $=
		ifTrue: [ ^ self scan29 ].
	currentCharacter == $>
		ifTrue: [ ^ self scan30 ].
	currentCharacter == $?
		ifTrue: [ ^ self recordAndReportMatch: #(53) ].
	currentCharacter == $[
		ifTrue: [ ^ self recordAndReportMatch: #(24) ].
	^ self scanForTokenX1X3