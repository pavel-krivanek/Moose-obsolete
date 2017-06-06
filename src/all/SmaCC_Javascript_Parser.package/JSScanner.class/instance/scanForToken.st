generated
scanForToken
	state == #template
		ifTrue:
			[ ^ self scanForTokenX1 ].
	state == #default
		ifTrue: [ self step.
			currentCharacter == $!
				ifTrue: [ ^ self scan1 ].
			currentCharacter == $"
				ifTrue: [ ^ self scan2 ].
			currentCharacter == $%
				ifTrue: [ ^ self scan7 ].
			currentCharacter == $&
				ifTrue: [ ^ self scan8 ].
			currentCharacter == $'
				ifTrue: [ ^ self scan9 ].
			currentCharacter == $(
				ifTrue: [ ^ self recordAndReportMatch: #(34) ].
			currentCharacter == $)
				ifTrue: [ ^ self recordAndReportMatch: #(33) ].
			currentCharacter == $*
				ifTrue: [ ^ self scan12 ].
			currentCharacter == $+
				ifTrue: [ ^ self scan13 ].
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
				ifTrue: [ ^ self recordAndReportMatch: #(95) ].
			currentCharacter == $~
				ifTrue: [ ^ self recordAndReportMatch: #(12) ].
			currentCharacter isDigit
				ifTrue: [ ^ self scan27 ].
			currentCharacter isSeparator
				ifTrue:
					[ ^ self scanForTokenX2 ].
			(currentCharacter isLetter or: [ '$_' includes: currentCharacter ])
				ifTrue: [ ^ self scan5 ] ].
	^ self reportLastMatch