tests
testCharacters
	| xml parser |

	xml :=
		'<test>one<non-empty>two</non-empty>three<!--comment-->',
		'four<empty></empty>five<?pi pi?>six</test>'.

	(parser := SAXRecordingHandler on: xml)
		parseDocument.
	self assert:
		(parser wasSentSelectors:
			#(startDocument
				startElement:attributes:
				characters:
				startElement:attributes:
				characters:
				endElement:
				characters:
				comment:
				characters:
				startElement:attributes:
				endElement:
				characters:
				processingInstruction:data:
				characters:
				endElement:
				endDocument)).

	(parser allSentMessagesNamed: #characters:)
		with:
			#(#('one')
				#('two')
				#('three')
				#('four')
				#('five')
				#('six'))
		do: [:message :arguments |
			self assert: message arguments = arguments].