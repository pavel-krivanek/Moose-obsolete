generated
scan28
	self recordMatch: #(2).
	self step.
	currentCharacter == $<
		ifTrue: [ self recordMatch: #(4).
			self step.
			currentCharacter == $=
				ifTrue: [ ^ self recordAndReportMatch: #(73) ].
			^ self reportLastMatch ].
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(6) ].
	^ self reportLastMatch