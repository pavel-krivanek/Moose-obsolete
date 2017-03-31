tests
testXMLLastOrNil
	self
		assert: self emptyList xmlLastOrNil = self defaultValue;
		assert: self listWithSingleItem xmlLastOrNil = self singleListItem;
		assert: self listWithItems xmlLastOrNil = self listItems last