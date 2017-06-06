generated
scan37
	self step.
	currentCharacter == $`
		ifTrue: [ ^ self recordAndReportMatch: #(103 107) ].
	currentCharacter == ${
		ifTrue: [ self recordMatch: #(104).
			self step.
			currentCharacter == $`
				ifTrue: [ ^ self recordAndReportMatch: #(107) ].
			^ self scan39 ].
	^ self scan36