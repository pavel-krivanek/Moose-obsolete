tests
testDeleteFromTo
	| stringNode |

	stringNode := self newNode.
	stringNode deleteFrom: 1 to: 0.
	self assert: stringNode string = ''.

	stringNode append: 'onetwothree'.
	stringNode deleteFrom: 0 to: -1.
	stringNode deleteFrom: 12 to: 13.
	self assert: stringNode string = 'onetwothree'.

	stringNode deleteFrom: 4 to: 6.
	self assert: stringNode string = 'onethree'.

	stringNode deleteFrom: 4 to: 8.
	self assert: stringNode string = 'one'.

	stringNode deleteFrom: 1 to: 3.
	self assert: stringNode string = ''.