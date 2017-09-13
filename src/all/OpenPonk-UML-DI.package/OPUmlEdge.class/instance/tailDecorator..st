Roassal2 - accessing
tailDecorator: aDecorator
	tailDecorator := aDecorator.
	rtEdge ifNotNil: [ rtEdge shape tail: (aDecorator asTail) ]