tests
testString
	| stringNode |

	stringNode := self nodeClass string: self markupString.
	self
		assert: stringNode class == self nodeClass;
		assert: stringNode string = self markupString.

	stringNode := self newNode.
	self assert: stringNode string = ''.

	stringNode string: self markupString.
	self assert: stringNode string = self markupString.

	stringNode string: ''.
	self assert: stringNode string = ''.