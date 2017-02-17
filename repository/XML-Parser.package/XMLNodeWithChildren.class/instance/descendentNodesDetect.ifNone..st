deprecated
descendentNodesDetect: aBlock ifNone: anExceptionBlock
	"less common alternate spelling, will be deprecated;
	use #descendantNodesDetect:ifNone: instead"

	^ self
		descendantNodesDetect: aBlock
		ifNone: anExceptionBlock