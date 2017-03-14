tests
testEndDTD
	#('<!DOCTYPE test PUBLIC "publicID" "systemID" [<!--comment-->]><test/>'
		'<!DOCTYPE test SYSTEM "systemID" [<!--comment-->]><test/>'
		'<!DOCTYPE test [<!--comment-->]><test/>')
		do: [:xml | | parser |
			(parser := SAXRecordingHandler on: xml)
				parseDocument.
			self assert:
				(parser wasSentSelectors:
					#(startDocument
						startDTD:publicID:systemID:
						comment:
						endDTD
						startElement:attributes:
						endElement:
						endDocument))].