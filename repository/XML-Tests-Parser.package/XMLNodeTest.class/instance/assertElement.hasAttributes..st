assertions
assertElement: anElement hasAttributes: anAssociationCollection
	| attributeNodes |

	self assert: anElement attributeNodes size = anAssociationCollection size.
	attributeNodes := anElement attributeNodes copy.
	anAssociationCollection associationsDo: [:each | | attributeNode |
		attributeNode := attributeNodes removeFirst.
		self
			assert: attributeNode name = each key;
			assert: attributeNode value = each value].