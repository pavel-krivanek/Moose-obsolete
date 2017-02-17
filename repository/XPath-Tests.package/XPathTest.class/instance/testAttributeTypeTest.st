tests
testAttributeTypeTest
	| results |

	results := XMLNodeList new.
	document allNodesDo: [:each |
		each isElement
			ifTrue: [results addAll: each attributeNodes]
			ifFalse: [
				each isStringNode
					ifTrue: [results addLast: each]]].
	self assert: (document xPath: '//attribute::* | //text()') = results.
	self assert:
		(document xPath: '(//attribute::* | //text())/ self :: attribute()') =
			(results select: [:each | each isAttribute]).