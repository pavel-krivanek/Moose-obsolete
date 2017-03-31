examples
shouldPushElement
	| stack |
	stack := self given: #shouldBeEmpty.
	stack push: 42.
	stack isEmpty should not beTrue.
	stack size should equal: 1.
	stack top should equal: 42.
	^ stack