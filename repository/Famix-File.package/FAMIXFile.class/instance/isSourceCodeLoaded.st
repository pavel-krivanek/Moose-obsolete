accessing
isSourceCodeLoaded
	self propertyNamed: #sourceText ifAbsentPut: [ ^ false].
	^ true