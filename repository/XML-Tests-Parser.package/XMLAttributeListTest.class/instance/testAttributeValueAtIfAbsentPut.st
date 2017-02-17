tests
testAttributeValueAtIfAbsentPut
	| list |

	list := self emptyList.
	self listItems do: [:each |
		self assert:
			(list
				attributeValueAt: each name
				ifAbsentPut: [each value]) = each value.
		self assert: (list attributeValueAt: each name) = each value.

		self assert:
			(list
				attributeValueAt: each name
				ifAbsentPut: [self fail]) = each value.
		self assert: (list attributeValueAt: each name) = each value].

	self assert:
		(list
			attributeValueAt: self prefixedAttribute name
			ifAbsentPut: [self prefixedAttribute value]) = self prefixedAttribute value.
	self assert:
		(list
			attributeValueAt: self prefixedAttribute localName
			ifAbsentPut: [self newListItem value]) = self newListItem value.
	self assert:
		(list attributeValueAt: self prefixedAttribute name) =
			self prefixedAttribute value.
	self assert:
		(list attributeValueAt: self prefixedAttribute localName) =
			self newListItem value.

	self assert:
		(list
			attributeValueAt: self prefixedAttribute name
			ifAbsentPut: [self fail]) = self prefixedAttribute value.
	self assert:
		(list
			attributeValueAt: self prefixedAttribute localName
			ifAbsentPut: [self fail]) = self newListItem value.
	self assert:
		(list attributeValueAt: self prefixedAttribute name) =
			self prefixedAttribute value.
	self assert:
		(list attributeValueAt: self prefixedAttribute localName) =
			self newListItem value.