utilities
assertInvariants: aDocumentNode
	"Assert that anXmlNode is properly setup.."
	
	self assertCopyInvariant: aDocumentNode.
	self assertEquivalentInvariant: aDocumentNode.
	self assertRootInvariant: aDocumentNode.
	self assertParentInvariant: aDocumentNode.
	self assertNavigationInvariant: aDocumentNode.
	self assertAttributeInvariant: aDocumentNode.
	self assertTypeInvariant: aDocumentNode