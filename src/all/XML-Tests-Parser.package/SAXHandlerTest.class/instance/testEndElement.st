tests
testEndElement
	| parser |

	(parser := SAXRecordingHandler on: self prefixedXMLSource)
		parseDocument.
	self
		assert: (parser wasSentSelectors: self prefixedXMLSourceSelectors);
		assert: (parser argumentsSentWith: #endElement:) = #('prefix:test').

	(parser := SAXRecordingHandler on: self prefixedXMLSource)
		usesNamespaces: false;
		parseDocument.
	self assert:
		(parser wasSentSelectors:
			self prefixedXMLSourceSelectorsNamespacesDisabled).
	self assert: (parser argumentsSentWith: #endElement:) = #('prefix:test').