testing
testNew
	self should: [ PPToken new ] raise: Error.
	