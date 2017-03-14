tests
testStartDTDPublicIDSystemID
	#('<!DOCTYPE test PUBLIC "publicID" "systemID"><test/>'
		'<!DOCTYPE test SYSTEM "systemID"><test/>'
		'<!DOCTYPE test><test/>')
		with:
			#(#('test' 'publicID' 'systemID')
				#('test' '' 'systemID')
				#('test' '' ''))
		do: [:xml :arguments | | parser |
			(parser := SAXRecordingHandler on: xml)
				parseDocument.
			self assert:
				(parser wasSentSelectors:
					#(startDocument
						startDTD:publicID:systemID:
						endDTD
						startElement:attributes:
						endElement:
						endDocument)).

			self assert:
				(parser argumentsSentWith: #startDTD:publicID:systemID:) =
					arguments].