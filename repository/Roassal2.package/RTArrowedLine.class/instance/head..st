accessing
head: aLineDecorationShape
	head := aLineDecorationShape.
	line ifNotNil: [ head line: line ].