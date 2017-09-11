tests
testIsPrivate
	| entity |
	entity := self actualClass new.
	entity isPrivate: true.
	self assert: entity isPrivate