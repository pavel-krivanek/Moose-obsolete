Roassal2 - accessing
headDecorator: aDecorator
	headDecorator := aDecorator.
	rtEdge ifNotNil: [ rtEdge shape head: (aDecorator asHead color: Color yellow) ]