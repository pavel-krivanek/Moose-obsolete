tests
testConfiguration
	| parser oldConfiguration newConfiguration |

	parser := SAXHandler on: self prefixedXMLSource.
	oldConfiguration := parser configuration.
	self assert: oldConfiguration class == self configurationClass.

	newConfiguration := self configurationClass new.
	self
		assert: (parser configuration: newConfiguration) == parser;
		assert: parser configuration class == self configurationClass.