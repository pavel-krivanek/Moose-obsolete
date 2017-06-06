generated
scan36
	[ self step.
	currentCharacter == $$
		ifTrue: [ ^ self scan37 ].
	currentCharacter == $\
		ifTrue: [ ^ self scan38 ].
	currentCharacter == $`
		ifTrue: [ ^ self recordAndReportMatch: #(103 107) ].
	true ] whileTrue