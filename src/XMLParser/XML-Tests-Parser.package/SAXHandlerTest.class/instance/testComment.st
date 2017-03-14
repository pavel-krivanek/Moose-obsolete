tests
testComment
	| xml parser |

	xml := '
		<!--before DTD-->
		<!DOCTYPE test [<!--in DTD-->]>
		<!--before element-->
		<test>
			<!--in element-->
		</test>
		<!--after element-->'.

	(parser := SAXRecordingHandler on: xml)
		parseDocument.
	self assert:
		(parser wasSentSelectors:
			#(startDocument
				comment:
				startDTD:publicID:systemID:
				comment:
				endDTD
				comment:
				startElement:attributes:
				characters:
				comment:
				characters:
				endElement:
				comment:
				endDocument)).

	(parser allSentMessagesNamed: #comment:)
		with:
			#(#('before DTD')
				#('in DTD')
				#('before element')
				#('in element')
				#('after element'))
		do: [:message :arguments |
			self assert: message arguments = arguments].