tests
testIsValidating
	| configuration |
	
	configuration := self newConfiguration.
	self
		assert: configuration isValidating;
		assert: (configuration isValidating: false) == configuration;
		deny: configuration isValidating;
		assert: (configuration isValidating: true) == configuration;
		assert: configuration isValidating.