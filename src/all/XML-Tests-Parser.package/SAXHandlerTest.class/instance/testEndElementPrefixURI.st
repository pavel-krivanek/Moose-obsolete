tests
testEndElementPrefixURI
	| parser |

	(parser := SAXRecordingPrefixURIHandler on: self prefixedXMLSource)
		parseDocument.
	self assert:
		(parser wasSentSelectors: self prefixedXMLSourcePrefixURISelectors).
	self assert:
		(parser argumentsSentWith: #endElement:prefix:uri:) =
			#('prefix:test' 'prefix' 'prefixNS').

	(parser := SAXRecordingPrefixURIHandler on: self prefixedXMLSource)
		usesNamespaces: false;
		parseDocument.
	self assert:
		(parser wasSentSelectors:
			self prefixedXMLSourcePrefixURISelectorsNamespacesDisabled).
	self assert:
		(parser argumentsSentWith: #endElement:prefix:uri:) =
			#('prefix:test' 'prefix' '').