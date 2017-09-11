tests
testIsAbstract
	| entity |
	entity := self actualClass new.
	entity isAbstract: true.
	self assert: entity isAbstract