accessing
axisSpecifier: anAxisSpecifier
	anAxisSpecifier = axisSpecifier
		ifFalse: [
			axisSpecifier := anAxisSpecifier.
			handlerSelector := nil.
			defaultNodeTestParserContextClass := nil].
	"now explicit"
	isImplicit := false.