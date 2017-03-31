tests
testStartCData
	| xml parser |

	xml := '<test>one<![CDATA[<![CDATA[two]]>three</test>'.

	(parser := SAXRecordingHandler on: xml)
		parseDocument.
	self assert:
		(parser wasSentSelectors:
			#(startDocument
				startElement:attributes:
				characters:
				startCData
				characters:
				endCData
				characters:
				endElement:
				endDocument)).

	(parser allSentMessagesNamed: #characters:)
		with:
			#(#('one')
				#('<![CDATA[two')
				#('three'))
		do: [:message :arguments |
			self assert: message arguments = arguments].