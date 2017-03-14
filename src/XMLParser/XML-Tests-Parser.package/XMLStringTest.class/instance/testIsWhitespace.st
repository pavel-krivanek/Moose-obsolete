tests
testIsWhitespace
	| stringNode |

	stringNode := self newNode.
	self deny: stringNode isWhitespace.

	stringNode string: Character xmlWhitespace.
	self assert: stringNode isWhitespace.

	stringNode append: 'non-space'.
	self deny: stringNode isWhitespace.