tests
testIsProtected
	| entity |
	entity := FAMIXNamedEntity new.
	entity isProtected: true.
	self assert: entity isProtected