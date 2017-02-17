testing
testStarGreedy
	| limit parser |
	limit := #digit asParser.
	parser := #word asParser starGreedy: limit.
	self assert: parser min equals: 0.
	self assert: parser max > parser min.
	self assert: parser limit equals: limit.
	self assert: parser children size equals: 2.
	self assert: parser children last equals: limit.
	self assert: parser fail: ''.
	self assert: parser fail: 'a'.
	self assert: parser fail: 'ab'.
	self
		assert: parser
		parse: '1'
		to: #()
		end: 0.
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
		parse: '12'
		to: #($1)
		end: 1.
	self
		assert: parser
		parse: 'a12'
		to: #($a $1)
		end: 2.
	self
		assert: parser
		parse: 'ab12'
		to: #($a $b $1)
		end: 3.
	self
		assert: parser
		parse: 'abc12'
		to: #($a $b $c $1)
		end: 4.
	self
		assert: parser
		parse: '123'
		to: #($1 $2)
		end: 2.
	self
		assert: parser
		parse: 'a123'
		to: #($a $1 $2)
		end: 3.
	self
		assert: parser
		parse: 'ab123'
		to: #($a $b $1 $2)
		end: 4.
	self
		assert: parser
		parse: 'abc123'
		to: #($a $b $c $1 $2)
		end: 5