handling - content
startElement: aQualifiedName attributes: anAttributeDictionary
	"Handles the start of an element if a subclass doesn't implement
	startElement:prefix:uri:localName:attributes: or
	startElement:prefix:uri:attributes:.

	aQualifiedName - the full name, including any prefix, such as 'prefix:name'
	anAttributeDictionary - an XMLAttributeDictionary of attributes"