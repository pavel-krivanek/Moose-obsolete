tests
testNewStringNode
	| cdata |

	cdata := self newFactory newStringNode: 'test'.
	self
		assert: cdata class == XMLString;
		assert: cdata string = 'test'.