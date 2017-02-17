enumerating
allElementsDetect: aBlock ifNone: anExceptionBlock
	"Descend depth-first visiting each element with aBlock until one such evaluation
	of aBlock with an element is true, then return that element. If no evaluation is
	true, then return the value of anExceptionBlock."

	self allElementsDo: [:each |
		(aBlock value: each)
			ifTrue: [^ each]].
	^ anExceptionBlock value.