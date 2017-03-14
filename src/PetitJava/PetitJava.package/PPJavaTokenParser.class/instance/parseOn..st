parsing
parseOn: context
	| token comments memento   |
	
	self halt: 'deprecated'.
	memento := context position.
	comments := self
		parseComments: #()
		on: context.
	token := super parseOn: context.
	token isPetit2Failure ifTrue: [
		context position: memento.
		^ token ].
	comments := self
		parseComments: comments
		on: context.
	^ token comments: comments