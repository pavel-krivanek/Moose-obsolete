private
attributeAxisAnySatisfy: anAttributeNodeTest
	self do: [:each |
		(each attributeAxisAnySatisfy: anAttributeNodeTest)
			ifTrue: [^ true]].
	^ false.