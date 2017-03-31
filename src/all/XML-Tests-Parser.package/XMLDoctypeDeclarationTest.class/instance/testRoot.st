tests
testRoot
	| doctype |

	doctype := self newNode.
	self
		assert: doctype root = '';
		assert: (doctype root: 'test') == doctype;
		assert: doctype root = 'test'.