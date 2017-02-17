tests
testAttributeValueAtPut
	| list |

	list := self emptyList.
	self listItems do: [:each |
		self assert:
			(list
				attributeValueAt: each name
				put: each value) = each value.
		self assert: (list attributeValueAt: each name) = each value].

	self assert:
		(list
			attributeValueAt: self prefixedAttribute name
			put: self prefixedAttribute value) = self prefixedAttribute value.
	self assert:
		(list
			attributeValueAt: self prefixedAttribute localName
			put: self newListItem value) = self newListItem value.
	self assert:
		(list attributeValueAt: self prefixedAttribute name) =
			self prefixedAttribute value.
	self assert:
		(list attributeValueAt: self prefixedAttribute localName) =
			self newListItem value.