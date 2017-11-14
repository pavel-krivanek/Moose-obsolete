generated
scanForTokenX6
	self recordMatch: #(56).
	self step.
	currentCharacter == $<
		ifTrue: [ self recordMatch: #(55).
			self step.
			currentCharacter == $=
				ifTrue: [ ^ self recordAndReportMatch: #(65) ].
			^ self reportLastMatch ].
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(57) ].
	^ self reportLastMatch