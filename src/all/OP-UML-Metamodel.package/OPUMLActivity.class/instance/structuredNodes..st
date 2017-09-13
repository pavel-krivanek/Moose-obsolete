accessing
structuredNodes: aStructuredActivityNode
	"Top-level StructuredActivityNodes in the Activity."
	self structuredNodes
		removeAll;
		addAll: aStructuredActivityNode