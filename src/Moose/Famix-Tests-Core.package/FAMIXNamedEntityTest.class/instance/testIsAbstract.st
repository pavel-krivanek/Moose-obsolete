tests
testIsAbstract
	| entity |
	entity := FAMIXNamedEntity new.
	entity isAbstract: true.
	self assert: entity isAbstract