tests
testIsInContent
	| xml parser seenElement |

	xml := '<?xml version="1.0"?>
	<!--comment-->
	<?target data?>',
	self generalEntityXMLSource,
	'<?target data?>
	<!--comment-->'.
	parser := SAXTestingMessageRecordingHandler on: xml.
	self deny: parser isInContent.
	parser parseDocument.

	seenElement := false.
	parser allSentSelectors
		with: parser isInContentResults
		do: [:selector :result |
			(seenElement
				or: [seenElement := selector asString beginsWith: 'startElement'])
				ifTrue: [self assert: result]
				ifFalse: [self deny: result]].
	
	self assert: parser isInContent.
	parser on: xml.
	self deny: parser isInContent.