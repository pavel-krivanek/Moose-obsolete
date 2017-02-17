accessing
baseURI
	"returns a string with the current base URI at this stage of parsing"
	self elementNester hasScopedAttributes
		ifTrue: [
			^ self elementNester
				scopedAttributeAt: 'xml:base'
				ifAbsent: [super baseURI]]
		ifFalse: [^ super baseURI]