tests
testSkippedEntity
	| xml parser |

	xml := '<!DOCTYPE root SYSTEM "extern.dtd"><root>&undeclared;</root>'.
	(parser := SAXRecordingPrefixURILocalNameHandler on: xml)
		isValidating: false;
		parseDocument.
	self assert:
		(parser wasSentSelectors: 
			#(startDocument
				startDTD:publicID:systemID:
				endDTD
				startElement:prefix:uri:localName:attributes:
				skippedEntity:
				endElement:prefix:uri:localName:
				endDocument)).
	self assert: (parser argumentsSentWith: #skippedEntity:) = #('undeclared').