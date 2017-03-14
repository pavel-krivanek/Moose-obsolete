enumerating
allNodesDetect: aBlock ifNone: anExceptionBlock
	self allNodesDo: [:each |
		(aBlock value: each)
			ifTrue: [^ each]].
	^ anExceptionBlock value.