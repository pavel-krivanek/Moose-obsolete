tests
testSetAttributes
	| element newAttributeAssociations |

	element := self newElementWithAttributes.
	newAttributeAssociations :=
		Array
			with: 'newName' -> 'newValue'
			with: 'newName2' -> 'newValue2'.
	element setAttributes: newAttributeAssociations.

	self assert:
		(element attributeNodes collect: [:each |
			each name -> each value]) asArray =
				newAttributeAssociations.