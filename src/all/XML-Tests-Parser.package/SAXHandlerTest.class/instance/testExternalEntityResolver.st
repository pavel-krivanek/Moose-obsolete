tests
testExternalEntityResolver
	| parser oldResolver newResolver |

	parser := SAXHandler on: self prefixedXMLSource.
	oldResolver := parser externalEntityResolver.
	self assert: oldResolver class == self externalEntityResolverClass.

	newResolver := self externalEntityResolverClass new.
	self
		assert: (parser externalEntityResolver: newResolver) == parser;
		assert: parser externalEntityResolver == newResolver.