tests
testStartPrefixMappingURI
	| parser messages |

	(parser := SAXRecordingPrefixURILocalNameHandler on: self prefixedXMLSource)
		parseDocument.
	self assert:
		(parser wasSentSelectors:
			self prefixedXMLSourcePrefixURILocalNameSelectors).
	messages := parser allSentMessagesNamed: #startPrefixMapping:uri:.
	self
		assert: messages size = 2;
		assert: messages first arguments = #('prefix' 'prefixNS');
		assert: messages second arguments = #('' 'defaultNS').

	(parser :=
		SAXRecordingPrefixURILocalNameHandler on:
			'<one xmlns="defaultNS"><two xmlns="defaultNS"/></one>')
		parseDocument.
	messages := parser allSentMessagesNamed: #startPrefixMapping:uri:.
	self
		assert: messages size = 1;
		assert: messages first arguments = #('' 'defaultNS').

	(parser :=
		SAXRecordingPrefixURILocalNameHandler on:
			'<one xmlns="defaultNS"><two xmlns="newDefaultNS"/></one>')
		parseDocument.
	messages := parser allSentMessagesNamed: #startPrefixMapping:uri:.
	self
		assert: messages size = 2;
		assert: messages first arguments = #('' 'defaultNS');
		assert: messages second arguments = #('' 'newDefaultNS').

	(parser :=
		SAXRecordingPrefixURILocalNameHandler on:
			'<one xmlns:xml="', XMLNamespaceScope xmlNamespaceURI, '"/>')
		parseDocument.
	self assert:
		(parser allSentMessagesNamed: #startPrefixMapping:uri:) isEmpty.