tests
testDecodesCharacters
	| configuration |

	configuration := self newConfiguration.
	self
		assert: configuration decodesCharacters;
		assert: (configuration decodesCharacters: false) == configuration;
		deny: configuration decodesCharacters;
		assert: (configuration decodesCharacters: true) == configuration;
		assert: configuration decodesCharacters.