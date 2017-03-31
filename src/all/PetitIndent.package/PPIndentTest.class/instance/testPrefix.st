as yet unclassified
testPrefix
	p := (a pushAsParser), (b pushAsParser), nl, prefix.

	self assert: p parse: 'ab
ab'.
		self assert: p fail: 'abab'.
	
	self assert: p fail: 'ab
aa'.
	self assert: p fail: 'ab
bb'.