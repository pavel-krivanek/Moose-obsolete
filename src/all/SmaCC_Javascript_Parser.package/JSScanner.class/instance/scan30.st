generated
scan30
	self recordMatch: #(5).
	self step.
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(9) ].
	currentCharacter == $>
		ifTrue: [ self recordMatch: #(3).
			self step.
			currentCharacter == $=
				ifTrue: [ ^ self recordAndReportMatch: #(72) ].
			currentCharacter == $>
				ifTrue: [ self recordMatch: #(1).
					self step.
					currentCharacter == $=
						ifTrue: [ ^ self recordAndReportMatch: #(70) ] ] ].
	^ self reportLastMatch