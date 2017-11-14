parsing
nextNamespaceTest
	state := XPathNodeTestParserNamespaceTypeTestState new.
	self
		peekForNodeTestArgument;
		nextEndArgumentList.