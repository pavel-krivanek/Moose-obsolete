tests
testWriteXMLOn
	self assert:
		(self nodeClass name: 'one' publicID: 'two' systemID: 'three') printString =
			'<!NOTATION one PUBLIC "two" "three">'.
	self assert:
		(self nodeClass name: 'one' publicID: '' systemID: 'two') printString =
			'<!NOTATION one SYSTEM "two">'.
	self assert:
		(self nodeClass name: 'one' publicID: 'two' systemID: '') printString =
			'<!NOTATION one PUBLIC "two">'.