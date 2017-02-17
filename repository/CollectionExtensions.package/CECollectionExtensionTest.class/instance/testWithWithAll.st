instance creation
testWithWithAll
	| array |
	array := Array with: '42' withAll: #(4 2).
	self assert: array equals: #('42' 4 2)