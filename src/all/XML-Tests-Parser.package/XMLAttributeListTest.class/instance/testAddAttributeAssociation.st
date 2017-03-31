tests
testAddAttributeAssociation
	| list |

	list := self emptyList.
	self listItems do: [:each | | attribute |
		self assert: (list attributeNodeAt: each name) = self defaultValue.
		attribute := list addAttributeAssociation: each name -> each value.
		self
			assert: attribute class == self attributeClass;
			assert: attribute name = each name;
			assert: attribute value = each value;
			assert: (list attributeNodeAt: each name) = attribute].