tests
testReject
	| group result |
	group := self newSimpleInstance.
	result := group reject: #odd.
	self assert: (result includes: 2).
	self deny: (result includesAll: {1 . 3}).
	self assert: result receiver equals: group receiver.
	self deny: group == result