tests
testSystemID
	| doctype |

	doctype := self newNode.
	self
		assert: doctype systemID = '';
		assert: (doctype systemID: 'test') == doctype;
		assert: doctype systemID = 'test'.