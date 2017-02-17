testing
testIslandSequence4
	
	|  parser  a b c  eps |
	"Island sequence will never cross the boundery of 'c'"
	a := 'a' asParser.
	b := 'b' asParser.
	c := 'c' asParser.
	eps := nil asParser.
	
	parser := (self sea: a), b optional, (self sea: eps), c.
	
	self assert: parser parse: '..a...b...c'.
	"This fails, but it should not. Right now, the problem is, that eps island 
		does not allow for epsilon parse, if the current position is the water
		position. Yet, in this case, it should allow for.
		
		You should find a better way, how to prefer non-epsilon parses than using
		nonEpsilon (used right now)
	"
	self assert: parser parse: 'ac'.
	self assert: parser parse: '..a...c'.