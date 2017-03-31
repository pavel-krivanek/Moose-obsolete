handling - content
endElement: aQualifiedName prefix: aPrefix uri: aURI localName: aLocalName
	"Handles the end of an element, either an end tag like '</end>' or a
	self-closed tag like '<empty/>'. By default it forwards to a simpler handler,
	endElement:prefix:uri:.
	
	aQualifiedName - the full name, including any prefix, such as 'prefix:name'
	aPrefix - the prefix of the qualified name or an empty string
	aURI - the namespace URI of the element or an empty string
	aLocalName - the local part of the qualified name"

	self
		endElement: aQualifiedName
		prefix: aPrefix
		uri:  aURI