testing
testIslandPlus
	
	| island  parser |
	island := self sea: 'X' asParser.
	parser := island plus.
	
	self assert: parser parse: '....X....'.
	self assert: result size = 1.
	self assert: result first first = '....'.
	self assert: result first third = '....'.

	self assert: parser parse: '...X...X...XX'.
	self assert: result size = 4.

	self assert: result second first = ''.
	self assert: result second third = '...'.
	self assert: result third first = ''.
	self assert: result third third = ''.
	self assert: result fourth first = ''.
	self assert: result fourth third = ''.

	self assert: parser fail: '.....'.