tests
testWriteXMLOn
	self assert:
		(self nodeClass
			element: 'one'
			attribute: 'two'
			type: 'CDATA'
			defaultPragma: ''
			defaultValue: 'three') printString = '<!ATTLIST one two CDATA "three">'.
	self assert:
		(self nodeClass
			element: 'one'
			attribute: 'two'
			type: 'ENTITY'
			defaultPragma: 'FIXED'
			defaultValue: 'three') printString = '<!ATTLIST one two ENTITY #FIXED "three">'.
	self assert:
		(self nodeClass
			element: 'one'
			attribute: 'two'
			type: '(three|four)'
			defaultPragma: '#IMPLIED'
			defaultValue: 'four') printString = '<!ATTLIST one two (three|four) #IMPLIED>'.