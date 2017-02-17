accessing
allIncomingIncludeRelations
	| answer |
	answer := OrderedCollection new.
	self allIncomingIncludeRelations: answer.
	^ answer