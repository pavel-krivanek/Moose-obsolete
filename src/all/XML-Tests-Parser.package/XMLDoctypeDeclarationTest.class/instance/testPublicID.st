tests
testPublicID
	| doctype |

	doctype := self newNode.
	self
		assert: doctype publicID = '';
		assert: (doctype publicID: 'test') == doctype;
		assert: doctype publicID = 'test'.