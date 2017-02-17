tests
testEndElementPrefixURILocalName
	| parser |

	(parser := SAXRecordingPrefixURILocalNameHandler on: self prefixedXMLSource)
		parseDocument.
	self assert:
		(parser wasSentSelectors:
			self prefixedXMLSourcePrefixURILocalNameSelectors).
	self assert:
		(parser argumentsSentWith: #endElement:prefix:uri:localName:) =
			#('prefix:test' 'prefix' 'prefixNS' 'test').

	(parser := SAXRecordingPrefixURILocalNameHandler on: self prefixedXMLSource)
		usesNamespaces: false;
		parseDocument.
	self assert:
		(parser wasSentSelectors:
			self prefixedXMLSourcePrefixURILocalNameSelectorsNamespacesDisabled).
	self assert:
		(parser argumentsSentWith: #endElement:prefix:uri:localName:) =
			#('prefix:test' 'prefix' '' 'test').