testing-examples
testIdentifier
	self assert: self identifier parse: 'a' to: 'a'.
	self assert: self identifier parse: 'a1' to: 'a1'.
	self assert: self identifier parse: 'a12' to: 'a12'.
	self assert: self identifier parse: 'ab' to: 'ab'.
	self assert: self identifier parse: 'a1b' to: 'a1b'.

	self assert: self identifier parse: 'a_' to: 'a' end: 1.
	self assert: self identifier parse: 'a1-' to: 'a1' end: 2.
	self assert: self identifier parse: 'a12+' to: 'a12' end: 3.
	self assert: self identifier parse: 'ab^' to: 'ab' end: 2.
	self assert: self identifier parse: 'a1b*' to: 'a1b' end: 3.

	self assert: self identifier fail: ''.
	self assert: self identifier fail: '1'.
	self assert: self identifier fail: '1a'