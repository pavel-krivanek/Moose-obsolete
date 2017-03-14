accessing
expandedName
	"Returns the expanded name of the attribute as a string in the form of
	'{namespaceURI}localName' if there's a namespace URI or 'localName' if there
	isn't"

	^ self localName expandWithXMLNamespaceURI: self namespaceURI