tests
testDocumentURI
	| xml uri newURI parser |

	xml := self prefixedXMLSource.
	uri := 'test/test.xml'.
	newURI := 'new/new.xml'.
	parser :=
		SAXHandler
			on: xml
			documentURI: uri.
	self
		assert: parser documentURI = uri;
		assert: (parser documentURI: newURI) == parser;
		assert: parser documentURI = newURI.

	"reusing on: should clear it"
	self assert: (SAXHandler on: xml) documentURI = ''.