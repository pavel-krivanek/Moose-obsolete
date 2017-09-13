accessing
structuredNodes
	"Top-level StructuredActivityNodes in the Activity."
	^ structuredNodes ifNil: [ structuredNodes := OPUMLToManyLinks on: self identity opposite: #activity: ]