handling - dtd
handleImproperParameterEntityNesting
	"this is a validity constraint and is only checked when validating"
	self isValidating
		ifTrue: [self errorImproperParameterEntityNesting]