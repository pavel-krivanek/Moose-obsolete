parsing
nextAttributeTest
	state := XPathNodeTestParserAttributeTypeTestState new.
	self
		peekForNodeTestArgument;
		nextEndArgumentList.