examples
shouldLastInFirstOut
	| stack |
	stack := self given: #shouldPushMoreElements.
	stack pop should equal: 13.
	stack pop should equal: 7.
	stack pop should equal: 42.
	stack isEmpty should beTrue.