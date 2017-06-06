generated
scan29
	self recordMatch: #(32).
	self step.
	currentCharacter == $=
		ifTrue: [ self recordMatch: #(20).
			self step.
			currentCharacter == $=
				ifTrue: [ ^ self recordAndReportMatch: #(22) ].
			^ self reportLastMatch ].
	currentCharacter == $>
		ifTrue: [ ^ self recordAndReportMatch: #(51) ].
	^ self reportLastMatch