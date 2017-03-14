tests
testElementAttributeTypeDefaultPragmaDefaultValue
	| declaration |

	declaration :=
		self nodeClass
			element: 'one'
			attribute: 'two'
			type: 'CDATA'
			defaultPragma: '#IMPLIED'
			defaultValue: 'default'.
	self
		assert: declaration class == self nodeClass;
		assert: declaration element = 'one';
		assert: declaration attribute = 'two';
		assert: declaration type = 'CDATA';
		assert: declaration defaultPragma = '#IMPLIED';
		assert: declaration defaultValue = 'default'.