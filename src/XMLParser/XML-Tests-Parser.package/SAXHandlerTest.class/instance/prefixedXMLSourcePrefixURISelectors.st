accessing
prefixedXMLSourcePrefixURISelectors
	^ #(startDocument
		startPrefixMapping:uri: startPrefixMapping:uri:
		startElement:prefix:uri:attributes:
		characters:
		endElement:prefix:uri:
		endPrefixMapping: endPrefixMapping:
		endDocument)