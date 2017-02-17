tests
testSetAttributesFromOrderPreservingDictionary
	| element list dictionary |

	element := XMLElement new.
	list := self listClass observer: element.
	dictionary := OrderPreservingDictionary newFrom: self attributeAssociations.
	self assert:
		(list setAttributesFromOrderPreservingDictionary: dictionary) == list.
	self assert:
		list attributeAssociations asArray =
			self attributeAssociations asArray.
	list do: [:each |
		self
			assert: each class == self attributeClass;
			assert: each parent == element;
			assert: each element == element]