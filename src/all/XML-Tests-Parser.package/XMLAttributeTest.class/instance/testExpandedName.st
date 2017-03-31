tests
testExpandedName
	| element attribute |

	element := self newElement.
	attribute := self nodeClass name: 'one' value: 'two'.
	element attributeNodes add: attribute.
	self assert: (attribute expandedName = 'one').

	element defaultNamespace: 'defaultNS'.
	self assert: (attribute expandedName = 'one').

	element declarePrefix: 'prefix' uri: 'prefixNS'.
	attribute name: 'prefix:two'.
	self assert: (attribute expandedName = 'Q{prefixNS}two').