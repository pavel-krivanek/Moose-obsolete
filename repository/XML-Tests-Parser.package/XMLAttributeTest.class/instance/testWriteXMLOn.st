tests
testWriteXMLOn
	self
		assert: (self nodeClass name: 'name' value: '') printString = 'name=""';
		assert: (self nodeClass name: 'name' value: 'value') printString = 'name="value"';
		assert:
			(self nodeClass
				name: 'name'
				value: self markupString) printString = ('name="', self escapedString, '"')