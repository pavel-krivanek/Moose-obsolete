tests
testAttributes
	| list dictionary |

	list := self listWithItems.
	dictionary := list attributes.
	self
		assert: dictionary class == self attributesClass;
		assert:
			dictionary =
				(self attributesClass newFrom: self attributeAssociations).