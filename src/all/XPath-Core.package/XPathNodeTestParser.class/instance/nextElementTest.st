parsing
nextElementTest
	state := XPathNodeTestParserElementTypeTestState new.
	self
		peekForNodeTestArgument;
		nextEndArgumentList.