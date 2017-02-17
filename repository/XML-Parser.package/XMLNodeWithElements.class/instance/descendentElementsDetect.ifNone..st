deprecated
descendentElementsDetect: aBlock ifNone: anExceptionBlock
	"less common alternate spelling, will be deprecated;
	use #descendantElementsDetect:ifNone: instead"

	^ self
		descendantElementsDetect: aBlock
		ifNone: anExceptionBlock