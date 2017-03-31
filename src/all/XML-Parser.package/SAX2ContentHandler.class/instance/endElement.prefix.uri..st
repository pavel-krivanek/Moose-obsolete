handling - content
endElement: aQualifiedName prefix: aPrefix uri: aURI
	"Handles the end of an element if a subclass doesn't implement
	endElement:prefix:uri:localName:. By default it forwards to a simpler
	handler, endElement:.
	
	aQualifiedName - the full name, including any prefix, such as 'prefix:name'
	aPrefix - the prefix of the qualified name or an empty string
	aURI - the namespace URI of the element or an empty string"

	self endElement: aQualifiedName