primitives
primitiveProcessExample: anExample withArguments: arguments
	^ (self providerFor: anExample) perform: anExample method selector withArguments: arguments