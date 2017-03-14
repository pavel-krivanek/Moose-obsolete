private
expect: aBlock describeShould: shouldBlock describeShouldNot: shouldNotBlock
	self isShould ifTrue: [
		aBlock value ifFalse: [TestFailure signal: shouldBlock value].
		^nil ].
	self isShouldNot ifTrue: [
		aBlock value ifTrue: [TestFailure signal: shouldNotBlock value].
		^nil ].
	self error: 'illegal state ', state asString