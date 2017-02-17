tests
testEncoding
	| document |

	document := self newNode.
	self
		assert: document encoding = '';
		assert: (document encoding: 'UTF-8') == document;
		assert: document encoding = 'UTF-8'.