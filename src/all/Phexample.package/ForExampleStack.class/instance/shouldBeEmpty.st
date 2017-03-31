examples
shouldBeEmpty
	| stack |
	stack := Stack new.
	stack isEmpty should beTrue.
	stack size should equal: 0.
	^ stack