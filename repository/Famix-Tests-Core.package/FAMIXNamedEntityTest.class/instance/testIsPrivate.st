tests
testIsPrivate
	| entity |
	entity := FAMIXNamedEntity new.
	entity isPrivate: true.
	self assert: entity isPrivate