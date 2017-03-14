tests
testOn
	| parser oldConfiguraiton |

	parser :=
		SAXHandler
			on: self prefixedXMLSource
			documentURI: 'oldURI'.
	oldConfiguraiton := parser configuration.
	parser parseDocument.
	self
		assert: (parser on: self generalEntityXMLSource) == parser;
		assert: parser input = self generalEntityXMLSource;
		deny: parser documentURI = 'oldURI';
		deny: parser configuration == oldConfiguraiton.