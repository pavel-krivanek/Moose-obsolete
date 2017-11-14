parsing
parseInput
	state := handler defaultNodeTestParserStateClass new.
	isParsingNodeTypeTest := false.

	self peekForNodeTest.