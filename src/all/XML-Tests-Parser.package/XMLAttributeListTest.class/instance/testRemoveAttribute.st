tests
testRemoveAttribute
	| list |

	list := self listWithItems.
	self listItems do: [:each |
		self
			assert: (list removeAttribute: each name) = each value;
			deny: (list includes: each).
	
		self
			should: [list removeAttribute: each name]
			raise: Error].

	list add: self prefixedAttribute.
	self
		should: [list removeAttribute: self prefixedAttribute localName]
		raise: Error.
	self assert: (list includes: self prefixedAttribute).
	self assert:
		(list removeAttribute: self prefixedAttribute name) =
			self prefixedAttribute value.
	self deny: (list includes: self prefixedAttribute).