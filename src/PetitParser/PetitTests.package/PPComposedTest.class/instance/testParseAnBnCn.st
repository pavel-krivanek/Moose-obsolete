testing
testParseAnBnCn
	"PEGs for a non context- free language: 
		
		a^n , b^n , c^n
		
	S <- &P1 P2 
	P1 <- AB 'c' 
	AB <- 'a' AB 'b' / epsilon
	P2 <- 'a'* BC end
	BC <- 'b' BC 'c' / epsilon"
	
	| s p1 ab p2 bc |
	s := PPDelegateParser new.
	p1 := PPDelegateParser new.
	ab := PPDelegateParser new.
	p2 := PPDelegateParser new.
	bc := PPDelegateParser new.
	
	s setParser: (p1 and , p2 end) flatten.
	p1 setParser: ab , $c asParser.
	ab setParser: ($a asParser , ab , $b asParser) optional.
	p2 setParser: $a asParser star , bc.
	bc setParser: ($b asParser , bc , $c asParser) optional.
	
	self assert: s parse: 'abc' to: 'abc'.
	self assert: s parse: 'aabbcc' to: 'aabbcc'.
	self assert: s parse: 'aaabbbccc' to: 'aaabbbccc'.

	self assert: s fail: 'bc'.
	self assert: s fail: 'ac'.
	self assert: s fail: 'ab'.
	self assert: s fail: 'abbcc'.
	self assert: s fail: 'aabcc'.
	self assert: s fail: 'aabbc'