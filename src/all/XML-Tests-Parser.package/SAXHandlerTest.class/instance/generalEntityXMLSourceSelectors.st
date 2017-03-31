accessing
generalEntityXMLSourceSelectors
	^ #(startDocument
			startDTD:publicID:systemID:
			parameterEntityDeclaration:replacement:
			generalEntityDeclaration:replacement: generalEntityDeclaration:replacement:
			endDTD
			startElement:prefix:uri:localName:attributes:
			startEntity: startEntity: endEntity: endEntity: characters:
			endElement:prefix:uri:localName:
			endDocument)