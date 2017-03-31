tokenizing
nextEndDocument
	context canTerminateInput
		ifFalse: [self errorInputTerminatedPrematurely].
	context isContentContext
		ifTrue: [
			elementNester hasOpenElements
				ifTrue: [self errorUnterminatedElements]]
		ifFalse: [
			self hasOpenIncludeSections
				ifTrue: [self errorUnterminatedIncludeSections]].
	super nextEndDocument.