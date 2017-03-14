tests
testIgnorableWhitespace
	| dtd xml parser |

	dtd := '
		<!DOCTYPE one [ 
			<!ELEMENT one (two)>
			<!ELEMENT two (#PCDATA|three)*>
			<!ELEMENT three ANY>
		]>'.
	xml := '
		<one>
			<two>
				test
				<three>
					test
				</three>
				test
			</two>
		</one>
	'.

	(parser := SAXRecordingPrefixURILocalNameHandler on: dtd, xml) parseDocument.
	self assert:
		(parser wasSentSelectors: 
			#(startDocument
				startDTD:publicID:systemID:
				elementDeclaration:contentModel:
				elementDeclaration:contentModel:
				elementDeclaration:contentModel:
				endDTD
				startElement:prefix:uri:localName:attributes:
				ignorableWhitespace:
				startElement:prefix:uri:localName:attributes:
				characters:
				startElement:prefix:uri:localName:attributes:
				characters:
				endElement:prefix:uri:localName:
				characters:
				endElement:prefix:uri:localName:
				ignorableWhitespace:
				endElement:prefix:uri:localName:
				endDocument)).
	(parser allSentMessagesNamed: #ignorableWhitespace:) do: [:each |
		self assert: each arguments first isXMLWhitespace].

	(parser := SAXRecordingPrefixURILocalNameHandler on: xml) parseDocument.
	self assert:
		(parser wasSentSelectors: 
			#(startDocument
				startElement:prefix:uri:localName:attributes:
				characters:
				startElement:prefix:uri:localName:attributes:
				characters:
				startElement:prefix:uri:localName:attributes:
				characters:
				endElement:prefix:uri:localName:
				characters:
				endElement:prefix:uri:localName:
				characters:
				endElement:prefix:uri:localName:
				endDocument)).

	self assert:
		(parser allSentMessagesNamed: #characters:) first arguments first isXMLWhitespace.
	self assert:
		(parser allSentMessagesNamed: #characters:) last arguments first isXMLWhitespace.