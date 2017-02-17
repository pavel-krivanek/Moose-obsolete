assertions
testWriteXMLOn
	self assert:
		(self nodeClass
			element: 'one'
			contentModel: '(two | three)') printString = '<!ELEMENT one (two | three)>'.
	self assert:
		(self nodeClass
			element: 'one'
			contentModel: 'EMPTY') printString = '<!ELEMENT one EMPTY>'.