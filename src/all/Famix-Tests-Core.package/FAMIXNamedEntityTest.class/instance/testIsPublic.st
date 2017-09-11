tests
testIsPublic
	| entity |
	entity := self actualClass new.
	entity isPublic: true.
	self assert: entity isPublic