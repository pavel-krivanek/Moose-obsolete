generated
scanForTokenX1
	self step.
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
	^ self scanForTokenX1X4