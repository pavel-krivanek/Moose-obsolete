handling - content
startElement: aQualifiedName prefix: aPrefix uri: aURI localName: aLocalName attributes: aDictionary
	"Handles the start of an element, either a start tag like '<start>' or a
	self-closed tag like '<empty/>'. By default it forwards to a simpler handler,
	startElement:prefix:uri:attributes:.
	
	aQualifiedName - the full name, including any prefix, such as 'prefix:name'
	aPrefix - the prefix of the qualified name or an empty string
	aURI - the namespace URI of the element or an empty string
	aLocalName - the local part of the qualified name
	aDictionary - an OrderPreservingStringDictionary of attributes"

	self
		startElement: aQualifiedName
		prefix: aPrefix
		uri: aURI
		attributes: aDictionary