initialization
on: aStringOrStream
	super on: aStringOrStream.

	document := nil.
	nodeStack := OrderedCollection new: 10.
	currentScope := nil.