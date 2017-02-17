tests
testWriteXMLOn
	self
		assert: self newNode printString = '<![CDATA[]]>';
		assert: (self nodeClass string: self markupString) printString = ('<![CDATA[', self markupString, ']]>').