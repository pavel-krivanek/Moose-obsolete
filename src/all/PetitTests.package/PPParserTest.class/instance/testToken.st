testing-mapping
testToken
	| parser |
	parser := $a asParser token.
	self assert: parser tokenClass equals: PPToken.
	self
		assert: parser
		parse: 'a'
		toToken: 1
		stop: 1.
	self assert: parser fail: 'b'.
	self assert: parser fail: ''.
	parser := $a asParser token: PPToken.
	self assert: parser tokenClass equals: PPToken.
	self
		assert: parser
		parse: 'a'
		toToken: 1
		stop: 1.
	self assert: parser fail: ''.
	self assert: parser fail: 'b'