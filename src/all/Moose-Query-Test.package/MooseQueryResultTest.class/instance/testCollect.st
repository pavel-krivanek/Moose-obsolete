tests
testCollect
	| group result |
	group := self newSimpleInstance.
	result := group collect: [ :e | e + 1 ].
	self assert: (result includesAll: {2 . 3 . 4}).
	self assert: result receiver equals: group receiver.
	self deny: group == result