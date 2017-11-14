accessing
axisSpecifier: anAxisSpecifier
	anAxisSpecifier = axisSpecifier
		ifFalse: [
			axisSpecifier := anAxisSpecifier.
			handlerSelector := nil.
			defaultNodeTestParserStateClass := nil].
	"now explicit"
	isImplicit := false.