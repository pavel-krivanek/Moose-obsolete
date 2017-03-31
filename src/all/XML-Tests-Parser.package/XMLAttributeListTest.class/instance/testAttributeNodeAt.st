tests
testAttributeNodeAt
	| list |

	list := self emptyList.
	self listItems do: [:each |
		self assert: (list attributeNodeAt: each name) = self defaultValue.
	
		list add: each.
		self assert: (list attributeNodeAt: each name) = each].

	self
		assert: (list attributeNodeAt: self prefixedAttribute name) = self defaultValue;
		assert: (list attributeNodeAt: self prefixedAttribute localName) = self defaultValue.

	list add: self prefixedAttribute.
	self
		assert: (list attributeNodeAt: self prefixedAttribute name) = self prefixedAttribute;
		assert: (list attributeNodeAt: self prefixedAttribute localName) = self prefixedAttribute.