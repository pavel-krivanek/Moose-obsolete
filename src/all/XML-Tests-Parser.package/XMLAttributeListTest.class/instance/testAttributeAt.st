tests
testAttributeAt
	| list |

	list := self emptyList.
	self listItems do: [:each |
		self assert: (list attributeAt: each name) = ''.
	
		list add: each.
		self assert: (list attributeAt: each name) = each value].

	self
		assert: (list attributeAt: self prefixedAttribute name) = '';
		assert: (list attributeAt: self prefixedAttribute localName) = ''.

	list add: self prefixedAttribute.
	self assert:
		(list attributeAt: self prefixedAttribute name) =
			self prefixedAttribute value.
	self assert:
		(list attributeAt: self prefixedAttribute localName) =
			''.