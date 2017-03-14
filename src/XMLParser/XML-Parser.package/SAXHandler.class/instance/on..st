initialization
on: aStringOrStream
	input := aStringOrStream.

	"a single instance can parse multiple documents with on:,
	so all these values must be reset"
	documentURI := nil.
	isInContent := false.
	isInCDataSection := false.
	configuration
		ifNil: [self configuration: self configurationClass new]
		ifNotNil: [self configuration: configuration copy].