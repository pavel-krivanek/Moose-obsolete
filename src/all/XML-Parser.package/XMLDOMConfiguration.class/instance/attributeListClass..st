accessing
attributeListClass: aClass
	self nodeFactory:
		(self nodeFactory asPluggableNodeFactory attributeListClass: aClass)