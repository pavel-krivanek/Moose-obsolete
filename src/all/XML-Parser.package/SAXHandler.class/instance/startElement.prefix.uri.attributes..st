handling - content
startElement: aQualifiedName prefix: aPrefix uri: aURI attributes: anAttributeDictionary
	"Handles the start of an element if a subclass doesn't implement
	startElement:prefix:uri:localName:attributes:. By default it forwards
	to a simpler handler, startElement:attributes:.
	
	aQualifiedName - the full name, including any prefix, such as 'prefix:name'
	aPrefix - the prefix of the qualified name or an empty string
	aURI - the namespace URI of the element or an empty string
	anAttributeDictionary - an XMLAttributeDictionary of attributes"

	self
		startElement: aQualifiedName
		attributes: anAttributeDictionary