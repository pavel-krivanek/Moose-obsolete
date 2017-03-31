tests
testReplaceAllWith
	| stringNode |

	(stringNode := self newNode) replaceAll: 'old' with: 'new'.
	self assert: stringNode string = ''.

	stringNode string: 'one old two old three old'.
	stringNode replaceAll: 'old' with: (self nodeClass string: 'new').
	self assert: stringNode string = 'one new two new three new'.

	stringNode replaceAll: 'new' with: ''.
	self assert: stringNode string = 'one  two  three '.