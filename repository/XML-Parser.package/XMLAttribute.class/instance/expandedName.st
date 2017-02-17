accessing
expandedName
	"returns the expanded name of the element as a string in the form of either
	'{namespaceURI}localName' (if there's a namespace URI) or 'localName'"

	^ self localName expandWithXMLNamespaceURI: self namespaceURI