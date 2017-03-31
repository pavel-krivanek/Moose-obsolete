tests
testReplaceFromToWith
	| stringNode |

	(stringNode := self newNode) replaceFrom: -1 to: -3 with: 'one'.
	self assert: stringNode string = 'one'.

	stringNode replaceFrom: 1 to: 0 with: 'zero'.
	self assert: stringNode string = 'zeroone'.

	stringNode replaceFrom: 9 to: 7 with: (self nodeClass string: 'fourthree').
	self assert: stringNode string = 'zeroonefourthree'.

	stringNode replaceFrom: 8 to: 11 with: ' two '.
	self assert: stringNode string = 'zeroone two three'.

	stringNode replaceFrom: 0 to: 4 with: ''.
	self assert: stringNode string = 'one two three'.

	stringNode replaceFrom: 14 to: 13 with: (self nodeClass string: ' four').
	self assert: stringNode string = 'one two three four'.