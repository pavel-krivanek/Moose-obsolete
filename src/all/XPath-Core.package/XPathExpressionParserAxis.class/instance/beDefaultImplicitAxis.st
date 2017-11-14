changing
beDefaultImplicitAxis
	axisSpecifier := 'child'.
	handlerSelector := #handleChildAxis.
	defaultNodeTestParserStateClass := XPathNodeTestParserElementState.
	isImplicit := true.
	isFirstAxis := false.
	isStartOfRelativeLocationPath := false.