tests
testElement
	| attribute element |

	attribute := self newNode.
	self assert: attribute element isNil.

	element := self newElement.
	self
		assert: (attribute element: element) == attribute;
		assert: attribute element == element.