tests
testEndEntity
	| parser messages |

	(parser := SAXRecordingPrefixURILocalNameHandler on: self generalEntityXMLSource)
		parseDocument.
	self assert: (parser wasSentSelectors: self generalEntityXMLSourceSelectors).
	messages := parser allSentMessagesNamed: #endEntity:.
	self
		assert: messages first arguments = #('second');
		assert: messages second arguments = #('first').