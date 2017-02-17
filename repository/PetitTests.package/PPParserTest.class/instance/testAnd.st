testing
testAnd
	| parser |
	parser := 'foo' asParser flatten , 'bar' asParser flatten and.
	self
		assert: parser
		parse: 'foobar'
		to: #('foo' 'bar')
		end: 3.
	self assert: parser fail: 'foobaz'.
	parser := 'foo' asParser and.
	self assert: parser and equals: parser