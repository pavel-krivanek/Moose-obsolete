enumerating
elementsDetect: aBlock ifNone: anExceptionBlock
	"implementing with #elementsDo: benefits the caching subclass because
	of its fast #elementsDo: implementation"
	self elementsDo: [:each |
		(aBlock value: each)
			ifTrue: [^ each]].
	^ anExceptionBlock value.