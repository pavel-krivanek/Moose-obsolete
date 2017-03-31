as yet unclassified
testTop2
	p := (a pushAsParser), (b pushAsParser) optional, top.

	self assert: p parse: 'aa'.
	self assert: p parse: 'abb'.