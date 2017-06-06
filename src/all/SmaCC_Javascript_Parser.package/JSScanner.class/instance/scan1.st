generated
scan1
	self recordMatch: #(7).
	self step.
	currentCharacter == $=
		ifTrue: [ self recordMatch: #(23).
			self step.
			currentCharacter == $=
				ifTrue: [ ^ self recordAndReportMatch: #(16) ] ].
	^ self reportLastMatch