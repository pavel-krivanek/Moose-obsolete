*XPath-Core-private
attributeAxisAnySatisfy: anAttributeNodeTest
	self hasAttributes
		ifTrue: [
			^ anAttributeNodeTest isAttributeNodeTestForName
				ifTrue: [self includesAttribute: anAttributeNodeTest name]
				ifFalse: [self attributeNodes anySatisfy: anAttributeNodeTest]]
		ifFalse: [^ false]