tests
testAttributeTypeTest
	| expected |

	expected := XMLNodeList new.
	document allNodesDo: [:each |
		each isElement
			ifTrue: [expected addAll: each attributeNodes]
			ifFalse: [
				each isStringNode
					ifTrue: [expected addLast: each]]].
	self
		assertNodeSet: (document xpath: '//attribute::* | //text()')
		hasNodes: expected.
	
	expected := expected select: [:each | each isAttribute].
	self
		assertNodeSet:
			(document xpath: '(//attribute::* | //text())/ self :: attribute()')
		hasNodes: expected.