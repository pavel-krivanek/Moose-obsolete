tests
testRaw
	self assert:
		(XMLWriter writeWith: [:writer |
			writer
				tag: 'test'
				with: [writer raw: '<raw name="&value;"/>']]) =
					'<test><raw name="&value;"/></test>'.
	self assert:
		(XMLWriter writeWith: [:writer |
			writer
				tag: 'test'
				with: [writer raw: '']]) = '<test />'.