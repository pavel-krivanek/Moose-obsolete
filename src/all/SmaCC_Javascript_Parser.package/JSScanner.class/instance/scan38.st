generated
scan38
	self step.
	currentCharacter == $`
		ifTrue: [ self recordMatch: #(107).
			self step.
			currentCharacter == $$
				ifTrue: [ ^ self scan34 ].
			currentCharacter == $\
				ifTrue: [ ^ self scan35 ].
			currentCharacter == $`
				ifTrue: [ ^ self recordAndReportMatch: #(103) ].
			^ self scan33 ].
	(currentCharacter == Character lf
		or: [ currentCharacter == Character cr ])
		ifTrue: [ ^ self scan39 ].
	^ self scan36