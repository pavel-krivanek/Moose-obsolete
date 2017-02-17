parsing
parseOn: aPPContext
	| memento comments token |
	memento := aPPContext remember.
	comments := self
		parseComments: #()
		on: aPPContext.
	token := super parseOn: aPPContext.
	token isPetitFailure ifTrue: [
		aPPContext restore: memento.
		^ token ].
	comments := self
		parseComments: comments
		on: aPPContext.
	^ token comments: comments