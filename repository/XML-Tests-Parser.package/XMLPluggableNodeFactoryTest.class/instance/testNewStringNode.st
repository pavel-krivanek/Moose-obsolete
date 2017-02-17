tests
testNewStringNode
	| string |

	super testNewStringNode.

	string := self newFactoryWithClasses newStringNode: 'test'.
	self
		assert: string class == self stringNodeClass;
		assert: string string = 'test'.