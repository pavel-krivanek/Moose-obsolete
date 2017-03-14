testing
testIslandSequence
	
	|  parser   a b c |
	"Island sequence will never cross the boundery of 'c'"
	a := 'a' asParser.
	b := 'b' asParser.
	c := 'c' asParser.
	
	parser := ((self sea: a), (self sea: b)) wrapped, c.
	
	self assert: parser parse: '..a...b...c'.
	self assert: parser fail: '..a..c...b..c'.
	self assert: parser fail: '..c..a.....b..c'.