generated
scan33
	[ self step.
	currentCharacter == $$
		ifTrue: [ ^ self scan34 ].
	currentCharacter == $\
		ifTrue: [ ^ self scan35 ].
	currentCharacter == $`
		ifTrue: [ ^ self recordAndReportMatch: #(103) ].
	true ] whileTrue