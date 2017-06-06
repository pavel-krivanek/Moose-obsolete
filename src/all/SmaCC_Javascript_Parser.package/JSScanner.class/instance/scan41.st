generated
scan41
	[ self step.
	currentCharacter == $$
		ifTrue: [ ^ self scan42 ].
	currentCharacter == $\
		ifTrue: [ ^ self scan43 ].
	currentCharacter == $`
		ifTrue: [ ^ self recordAndReportMatch: #(106) ].
	true ] whileTrue