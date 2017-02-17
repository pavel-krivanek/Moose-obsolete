tests
testCopyFromWithin

	| entity |
	entity := MooseEntity new.
	self assert: (entity copyFrom: nil within: nil) == entity