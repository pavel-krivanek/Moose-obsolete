tests
testCacheInvalidationAfterAdd
	| entity |
	self assert: model allClasses isEmpty.
	model add: FAMIXClass new.
	self assert: model allClasses size equals: 1