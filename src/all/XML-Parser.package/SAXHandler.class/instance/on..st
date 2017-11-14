initialization
on: aStringOrStream
	input := aStringOrStream.

	"a single instance can parse multiple documents with #on:,
	so each variable must be reset"
	documentURI := nil.
	configuration
		ifNil: [self configuration: self configurationClass new]
		ifNotNil: [self configuration: configuration copy].
	hasParser := false.
	isInContent := false.
	isInCDataSection := false.