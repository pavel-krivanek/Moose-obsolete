tests
testIsProtected
	| entity |
	entity := self actualClass new.
	entity isProtected: true.
	self assert: entity isProtected