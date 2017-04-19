tests
testBasic3

	| i |
	i := RTHighlightElementsInView new.
	self assert: i isNotTransparent.
	i transparent. 
	self deny: i isNotTransparent.