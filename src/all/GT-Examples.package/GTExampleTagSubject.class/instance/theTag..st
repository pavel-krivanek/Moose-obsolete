accessing
theTag: anObject
	anObject ifNotNil: [ self theTagName: anObject name ].
	theTag := anObject