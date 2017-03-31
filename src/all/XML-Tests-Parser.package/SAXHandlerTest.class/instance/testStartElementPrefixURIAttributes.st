tests
testStartElementPrefixURIAttributes
	| parser arguments |

	(parser := SAXRecordingPrefixURIHandler on: self prefixedXMLSource)
		parseDocument.
	self assert:
		(parser wasSentSelectors: self prefixedXMLSourcePrefixURISelectors).
	arguments := parser argumentsSentWith: #startElement:prefix:uri:attributes:.
	self
		assert: arguments size = 4;
		assert: arguments first = 'prefix:test';
		assert: arguments second = 'prefix';
		assert: arguments third = 'prefixNS';
		assert: arguments fourth = self prefixedXMLAttributes.

	(parser := SAXRecordingPrefixURIHandler on: self prefixedXMLSource)
		usesNamespaces: false;
		parseDocument.
	self assert:
		(parser wasSentSelectors:
			self prefixedXMLSourcePrefixURISelectorsNamespacesDisabled).
	arguments := parser argumentsSentWith: #startElement:prefix:uri:attributes:.
	self
		assert: arguments size = 4;
		assert: arguments first = 'prefix:test';
		assert: arguments second = 'prefix';
		assert: arguments third = '';
		assert: arguments fourth = self prefixedXMLAttributesNamespacesDisabled.