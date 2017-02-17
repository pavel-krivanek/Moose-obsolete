accessing
prefixedXMLSourcePrefixURILocalNameSelectors
	^ #(startDocument
		startPrefixMapping:uri: startPrefixMapping:uri:
		startElement:prefix:uri:localName:attributes:
		characters:
		endElement:prefix:uri:localName:
		endPrefixMapping: endPrefixMapping:
		endDocument)