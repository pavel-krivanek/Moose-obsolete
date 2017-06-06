tests
testAnnotationType
	| type instance |
	type := FAMIXAnnotationType new.
	instance := self actualClass new.
	instance annotationType: type.
	self assert: type instances size equals: 1