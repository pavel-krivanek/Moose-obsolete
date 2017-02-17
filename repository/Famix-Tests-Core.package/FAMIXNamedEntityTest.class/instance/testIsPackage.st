tests
testIsPackage
	| entity |
	entity := FAMIXNamedEntity new.
	entity isPackage: true.
	self assert: entity isPackage