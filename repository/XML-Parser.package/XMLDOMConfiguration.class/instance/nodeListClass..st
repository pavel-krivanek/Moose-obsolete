accessing
nodeListClass: aClass
	self nodeFactory:
		(self nodeFactory asPluggableNodeFactory nodeListClass: aClass)