tests
testWriteXMLOn
	self assert: self newNode printString = ''.
	self assert:
		(self nodeClass string: self markupString) printString =
			self escapedString.