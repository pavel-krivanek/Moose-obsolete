examples
shouldPopElement
	| stack |
	stack := self given: #shouldPushElement.
	stack pop should equal: 42.
	stack isEmpty should beTrue.
	stack size should equal: 0.
	^ stack