tests
testAttributeValueAt
	| list |

	list := self emptyList.
	self listItems do: [:each |
		self assert: (list attributeValueAt: each name) = ''.
	
		list add: each.
		self assert: (list attributeValueAt: each name) = each value].

	self
		assert: (list attributeValueAt: self prefixedAttribute name) = '';
		assert: (list attributeValueAt: self prefixedAttribute localName) = ''.

	list add: self prefixedAttribute.
	self assert:
		(list attributeValueAt: self prefixedAttribute name) =
			self prefixedAttribute value.
	self assert:
		(list attributeValueAt: self prefixedAttribute localName) =
			''.