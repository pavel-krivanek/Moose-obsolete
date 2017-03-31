tests
testString
	| comment |

	comment := self nodeClass string: self markupString.
	self
		assert: comment class == self nodeClass;
		assert: comment string = self markupString.

	comment := self newNode.
	self assert: comment string = ''.

	comment string: self markupString.
	self assert: comment string = self markupString.

	comment string: ''.
	self assert: comment string = ''.