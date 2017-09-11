tests
testIsPublic
	| entity |
	entity := self actualClass new.
	entity isPublic: true.
	self deny: entity isPublic 