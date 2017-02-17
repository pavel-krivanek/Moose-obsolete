testing
testParseAaaBbb
	"S0 ::= a S1 b
	 S1 ::= S0 | epsilon"
	
	| s0 s1 parser |
	s0 := PPDelegateParser new.
	s1 := PPDelegateParser new.
	s0 setParser: $a asParser , s1 , $b asParser.
	s1 setParser: s0 / nil asParser.
	parser := s0 flatten.

	self assert: parser parse: 'ab' to: 'ab'.
	self assert: parser parse: 'aabb' to: 'aabb'.
	self assert: parser parse: 'aaabbb' to: 'aaabbb'.
	self assert: parser parse: 'aaaabbbb' to: 'aaaabbbb'.

	self assert: parser parse: 'abb' to: 'ab' end: 2.
	self assert: parser parse: 'aabbb' to: 'aabb' end: 4.
	self assert: parser parse: 'aaabbbb' to: 'aaabbb' end: 6.
	self assert: parser parse: 'aaaabbbbb' to: 'aaaabbbb' end: 8.

	self assert: parser fail: 'a'.
	self assert: parser fail: 'b'.
	self assert: parser fail: 'aab'.
	self assert: parser fail: 'aaabb'