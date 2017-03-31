handling - content
startElement: aQualifiedName attributes: aDictionary
	"Handles the start of an element if a subclass doesn't implement
	startElement:prefix:uri:localName:attributes: or
	startElement:prefix:uri:attributes:.

	aQualifiedName - the full name, including any prefix, such as 'prefix:name'
	aDictionary - an OrderPreservingStringDictionary of attributes"