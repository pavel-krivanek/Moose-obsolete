tests
testStartElementPrefixURILocalNameAttributes
	| parser arguments |

	(parser := SAXRecordingPrefixURILocalNameHandler on: self prefixedXMLSource)
		parseDocument.
	self assert:
		(parser wasSentSelectors:
			self prefixedXMLSourcePrefixURILocalNameSelectors).
	arguments :=
		parser argumentsSentWith: #startElement:prefix:uri:localName:attributes:.
	self
		assert: arguments size = 5;
		assert: arguments first = 'prefix:test';
		assert: arguments second = 'prefix';
		assert: arguments third = 'prefixNS';
		assert: arguments fourth = 'test';
		assert: arguments fifth = self prefixedXMLAttributes.

	(parser := SAXRecordingPrefixURILocalNameHandler on: self prefixedXMLSource)
		usesNamespaces: false;
		parseDocument.
	self assert:
		(parser wasSentSelectors:
			self prefixedXMLSourcePrefixURILocalNameSelectorsNamespacesDisabled).
	arguments :=
		parser argumentsSentWith: #startElement:prefix:uri:localName:attributes:.
	self
		assert: arguments size = 5;
		assert: arguments first = 'prefix:test';
		assert: arguments second = 'prefix';
		assert: arguments third = '';
		assert: arguments fourth = 'test';
		assert: arguments fifth = self prefixedXMLAttributesNamespacesDisabled.