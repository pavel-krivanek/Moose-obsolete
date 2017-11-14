tokenizing
nextEndDocument
	state canTerminateInput
		ifFalse: [self errorInputTerminatedPrematurely].
	state isContentState
		ifTrue: [
			elementNester hasOpenElements
				ifTrue: [self errorUnterminatedElements]]
		ifFalse: [
			self hasOpenIncludeSections
				ifTrue: [self errorUnterminatedIncludeSections]].
	super nextEndDocument.