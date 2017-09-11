generated
scanForTokenX6
	self recordMatch: #(55).
	self step.
	currentCharacter == $<
		ifTrue: [ self recordMatch: #(72).
			self step.
			currentCharacter == $=
				ifTrue: [ ^ self recordAndReportMatch: #(65) ].
			^ self reportLastMatch ].
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(56) ].
	^ self reportLastMatch