tests
testSkippedEntityUnreplaced
	| xml parser |

	xml := '<!DOCTYPE root [<!ENTITY declared "replacement">]><root>&declared;</root>'.
	(parser := SAXRecordingPrefixURILocalNameHandler on: xml)
		isValidating: true;
		replacesContentEntityReferences: false;
		parseDocument.
	self assert:
		(parser wasSentSelectors:
			#(startDocument
				startDTD:publicID:systemID:
				generalEntityDeclaration:replacement:
				endDTD
				startElement:prefix:uri:localName:attributes:
				skippedEntity:
				characters:
				endElement:prefix:uri:localName:
				endDocument)).
	self
		assert: (parser argumentsSentWith: #skippedEntity:) = #('declared');
		assert: (parser argumentsSentWith: #characters:) = #('&declared;').