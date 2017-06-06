generated
scan39
	[ self step.
	currentCharacter == $`
		ifTrue: [ ^ self recordAndReportMatch: #(107) ].
	true ] whileTrue