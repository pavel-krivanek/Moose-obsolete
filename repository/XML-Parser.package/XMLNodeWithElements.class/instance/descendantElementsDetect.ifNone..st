enumerating
descendantElementsDetect: aBlock ifNone: anExceptionBlock
	"returns the first descendant element that aBlock evaluates true for or
	the value of anExceptionBlock if there isn't one"

	self descendantElementsDo: [:each |
		(aBlock value: each)
			ifTrue: [^ each]].
	^ anExceptionBlock value.