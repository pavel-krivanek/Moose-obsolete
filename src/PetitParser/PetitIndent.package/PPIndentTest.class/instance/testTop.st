as yet unclassified
testTop
	p := (a pushAsParser), (b pushAsParser), top.

	self assert: p parse: 'abb'.
	self assert: p fail: 'aba'.