tests
testAllModelMethod
	| model |
	model := self twoClasses.
	self assert: model allModelMethods entities size equals: 3.
	self assert: (model allModelMethods entities includesAllOf: model allMethods entities)