generated
scanForTokenX5
	self recordMatch: #(85).
	self step.
	currentCharacter == $-
		ifTrue: [ ^ self recordAndReportMatch: #(91) ].
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(70) ].
	currentCharacter == $>
		ifTrue: [ ^ self recordAndReportMatch: #(93) ].
	^ self reportLastMatch