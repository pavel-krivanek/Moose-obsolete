tests
testAccessesFromAndToShouldNotBeNil
	| accesses |
	accesses := self model allAccesses.
	self assert: (accesses select: [ :a | a from isNil ]) isEmpty.
	self assert: (accesses select: [ :a | a to isNil ]) isEmpty.
