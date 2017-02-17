tests
testHasAttributes
	self
		deny: self newNode hasAttributes;
		assert: self newElementWithAttributes hasAttributes;
		deny: self newElementWithAttributes removeAttributes hasAttributes