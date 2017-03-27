private
attributeAxisAnySatisfy: anAttributeNodeTest
	^ self anySatisfy: [:each |
		each attributeAxisAnySatisfy: anAttributeNodeTest]