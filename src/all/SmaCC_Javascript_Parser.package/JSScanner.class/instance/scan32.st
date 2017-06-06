generated
scan32
	self step.
	currentCharacter == $$
		ifTrue: [ ^ self scan34 ].
	currentCharacter == $?
		ifTrue: [ self step.
			currentCharacter == $$
				ifTrue: [ ^ self scan37 ].
			currentCharacter == $\
				ifTrue: [ ^ self scan38 ].
			currentCharacter == $`
				ifTrue: [ ^ self recordAndReportMatch: #(103) ].
			^ self scan36 ].
	currentCharacter == $\
		ifTrue: [ ^ self scan35 ].
	currentCharacter == $`
		ifTrue: [ ^ self recordAndReportMatch: #(103) ].
	^ self scan33