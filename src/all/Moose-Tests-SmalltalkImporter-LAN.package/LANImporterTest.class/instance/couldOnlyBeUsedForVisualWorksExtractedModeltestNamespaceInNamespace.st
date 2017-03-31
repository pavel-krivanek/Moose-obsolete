tests
couldOnlyBeUsedForVisualWorksExtractedModeltestNamespaceInNamespace
	 
	| namespace | 
	namespace := self model allNamespaces entityNamed: #Smalltalk. 
	self assert: namespace namespaces notEmpty. 
	namespace := self model allNamespaces entityNamed: #'LAN'. 
	self assert: namespace namespaces isEmpty