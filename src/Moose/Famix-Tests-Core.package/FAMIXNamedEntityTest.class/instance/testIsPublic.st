tests
testIsPublic
	| entity |
	entity := FAMIXNamedEntity new.
	entity isPublic: true.
	self assert: entity isPublic