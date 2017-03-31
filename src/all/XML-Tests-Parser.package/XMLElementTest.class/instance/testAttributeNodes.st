tests
testAttributeNodes
	| element attributeNodes |

	element := self newElementWithAttributes.
	attributeNodes := element attributeNodes.
	self assert: attributeNodes class == self attributeListClass.
	self assert:
		(attributeNodes collect: [:each | each name -> each value]) asArray
			= self attributeAssociations asArray.