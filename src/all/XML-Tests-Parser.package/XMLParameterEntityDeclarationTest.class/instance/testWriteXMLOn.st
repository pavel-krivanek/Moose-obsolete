tests
testWriteXMLOn
	self assert:
		(self nodeClass name: 'one' replacement: 'two') printString =
			'<!ENTITY % one "two">'.
	self assert:
		(self nodeClass name: 'one' publicID: 'two' systemID: 'three') printString =
			'<!ENTITY % one PUBLIC "two" "three">'.
	self assert:
		(self nodeClass name: 'one' publicID: '' systemID: 'three') printString =
			'<!ENTITY % one SYSTEM "three">'.