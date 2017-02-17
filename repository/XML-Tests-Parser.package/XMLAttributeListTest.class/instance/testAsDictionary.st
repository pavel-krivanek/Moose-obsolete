tests
testAsDictionary
	| list dictionary |

	list := self listWithItems.
	dictionary := list asDictionary.
	self
		assert: dictionary class == self attributesClass;
		assert:
			dictionary =
				(self attributesClass newFrom: self attributeAssociations).