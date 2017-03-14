*XPath-Tests
testStringValue
	super testStringValue.

	self assert:
		(self nodeClass string: self markupString) stringValue =
			self markupString.