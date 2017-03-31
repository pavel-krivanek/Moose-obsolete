tests
testCacheInvalidationAfterRemove
	| class |
	class := FAMIXClass new name: 'AClass'.
	model add: class.
	self assert: model allClasses size equals: 1.
	model remove: class.
	self assert: model allClasses isEmpty