testing
testPalindrome
	"S0 ::= a S1 a | b S1 b | ...
	 S1 ::= S0 | epsilon"
	
	| s0 s1 parser |
	s0 := PPDelegateParser new.
	s1 := PPDelegateParser new.
	s0 setParser: ($a asParser , s1 , $a asParser)
		/ ($b asParser , s1 , $b asParser)
		/ ($c asParser , s1 , $c asParser).	
	s1 setParser: s0 / nil asParser.
	parser := s0 flatten end.

	self assert: parser parse: 'aa' to: 'aa'.
	self assert: parser parse: 'bb' to: 'bb'.
	self assert: parser parse: 'cc' to: 'cc'.
	
	self assert: parser parse: 'abba' to: 'abba'.
	self assert: parser parse: 'baab' to: 'baab'.

	self assert: parser parse: 'abccba' to: 'abccba'.
	self assert: parser parse: 'abaaba' to: 'abaaba'.
	self assert: parser parse: 'cbaabc' to: 'cbaabc'.

	self assert: parser fail: 'a'.
	self assert: parser fail: 'ab'.
	self assert: parser fail: 'aab'.
	self assert: parser fail: 'abccbb'