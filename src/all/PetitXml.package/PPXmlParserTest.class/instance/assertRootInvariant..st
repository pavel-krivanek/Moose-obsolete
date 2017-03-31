utilities
assertRootInvariant: aDocumentNode
	"Assert that anXmlNode is the root of the tree."
	
	self assert: (aDocumentNode childNodes includes: aDocumentNode rootElement).
	aDocumentNode nodesDo: [ :node |
		self assert: node root == aDocumentNode.
		self assert: node document == aDocumentNode ]