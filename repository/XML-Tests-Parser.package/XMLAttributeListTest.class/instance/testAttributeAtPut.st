tests
testAttributeAtPut
	| list |

	list := self emptyList.
	self listItems do: [:each |
		self assert:
			(list
				attributeAt: each name
				put: each value) = each value.
		self assert: (list attributeAt: each name) = each value].

	self assert:
		(list
			attributeAt: self prefixedAttribute name
			put: self prefixedAttribute value) = self prefixedAttribute value.
	self assert:
		(list
			attributeAt: self prefixedAttribute localName
			put: self newListItem value) = self newListItem value.
	self assert:
		(list attributeAt: self prefixedAttribute name) =
			self prefixedAttribute value.
	self assert:
		(list attributeAt: self prefixedAttribute localName) =
			self newListItem value.