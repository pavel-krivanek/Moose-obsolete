tests
testStartElementAttributes
	| parser arguments |

	(parser := SAXRecordingHandler on: self prefixedXMLSource)
		parseDocument.
	self assert: (parser wasSentSelectors: self prefixedXMLSourceSelectors).
	arguments := parser argumentsSentWith: #startElement:attributes:.
	self
		assert: arguments size = 2;
		assert: arguments first = 'prefix:test';
		assert: arguments second = self prefixedXMLAttributes.

	(parser := SAXRecordingHandler on: self prefixedXMLSource)
		usesNamespaces: false;
		parseDocument.
	self assert:
		(parser wasSentSelectors:
			self prefixedXMLSourceSelectorsNamespacesDisabled).
	arguments := parser argumentsSentWith: #startElement:attributes:.
	self
		assert: arguments size = 2;
		assert: arguments first = 'prefix:test';
		assert: arguments second = self prefixedXMLAttributesNamespacesDisabled.