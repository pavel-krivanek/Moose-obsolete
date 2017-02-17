testing
testPlusLazy
	| limit parser |
	limit := #digit asParser.
	parser := #word asParser plusLazy: limit.
	self assert: parser min equals: 1.
	self assert: parser max > parser min.
	self assert: parser limit equals: limit.
	self assert: parser children size equals: 2.
	self assert: parser children last equals: limit.
	self assert: parser fail: ''.
	self assert: parser fail: '1'.
	self assert: parser fail: 'a'.
	self assert: parser fail: 'ab'.
	self
		assert: parser
		parse: 'a1'
		to: #($a)
		end: 1.
	self
		assert: parser
		parse: 'ab1'
		to: #($a $b)
		end: 2.
	self
		assert: parser
		parse: 'abc1'
		to: #($a $b $c)
		end: 3.
	self
		assert: parser
		parse: 'a12'
		to: #($a)
		end: 1.
	self
		assert: parser
		parse: 'ab12'
		to: #($a $b)
		end: 2.
	self
		assert: parser
		parse: 'abc12'
		to: #($a $b $c)
		end: 3.
	self
		assert: parser
		parse: 'a123'
		to: #($a)
		end: 1.
	self
		assert: parser
		parse: 'ab123'
		to: #($a $b)
		end: 2.
	self
		assert: parser
		parse: 'abc123'
		to: #($a $b $c)
		end: 3