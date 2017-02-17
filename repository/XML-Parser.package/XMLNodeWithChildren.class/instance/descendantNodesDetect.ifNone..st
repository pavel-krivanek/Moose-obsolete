enumerating
descendantNodesDetect: aBlock ifNone: anExceptionBlock
	"returns the first descendant node of the receiver that aBlock evaluates
	true for or the value of anExceptionBlock if there isn't one"

	self descendantNodesDo: [:each |
		(aBlock value: each)
			ifTrue: [^ each]].
	^ anExceptionBlock value.