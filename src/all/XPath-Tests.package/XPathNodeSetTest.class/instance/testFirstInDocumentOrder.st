tests
testFirstInDocumentOrder
	self
		assert: self emptyList firstInDocumentOrder = self defaultValue;
		assert: self listWithSingleItem firstInDocumentOrder = self singleListItem;
		assert: self listWithItems firstInDocumentOrder = self listItems first;
		assert: self listWithItems reversed firstInDocumentOrder = self listItems first