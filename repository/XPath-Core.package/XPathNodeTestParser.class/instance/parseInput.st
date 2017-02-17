parsing
parseInput
	context := handler defaultNodeTestParserContextClass new.
	isParsingNodeTypeTest := false.
	self peekForNodeTest.