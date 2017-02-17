tests
testEndPrefixMapping
	| parser messages |

	(parser := SAXRecordingPrefixURILocalNameHandler on: self prefixedXMLSource)
		parseDocument.
	self assert:
		(parser wasSentSelectors:
			self prefixedXMLSourcePrefixURILocalNameSelectors).
	messages := parser allSentMessagesNamed: #endPrefixMapping:.
	self
		assert: messages size = 2;
		assert: messages first arguments = #('prefix');
		assert: messages second arguments = #('').

	(parser :=
		SAXRecordingPrefixURILocalNameHandler on:
			'<one xmlns="defaultNS"><two xmlns="defaultNS"/></one>')
		parseDocument.
	messages := parser allSentMessagesNamed: #endPrefixMapping:.
	self
		assert: messages size = 1;
		assert: messages first arguments = #('').

	(parser :=
		SAXRecordingPrefixURILocalNameHandler on:
			'<one xmlns="defaultNS"><two xmlns="newDefaultNS"/></one>')
		parseDocument.
	messages := parser allSentMessagesNamed: #endPrefixMapping:.
	self
		assert: messages size = 2;
		assert: messages first arguments = #('');
		assert: messages second arguments = #('').

	(parser :=
		SAXRecordingPrefixURILocalNameHandler on:
			'<one xmlns:xml="', XMLNamespaceScope xmlNamespaceURI, '"/>')
		parseDocument.
	self assert:
		(parser allSentMessagesNamed: #endPrefixMapping:) isEmpty.