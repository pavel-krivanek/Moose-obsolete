tests
testIsPackage
	| entity |
	entity := self actualClass new.
	entity isPackage: true.
	self assert: entity isPackage