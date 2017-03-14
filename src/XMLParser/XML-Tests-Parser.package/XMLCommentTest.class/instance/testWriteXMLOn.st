tests
testWriteXMLOn
	self
		assert: self newNode printString = '<!---->';
		assert:
			(self nodeClass string: self markupString) printString =
				('<!--', self markupString, '-->')