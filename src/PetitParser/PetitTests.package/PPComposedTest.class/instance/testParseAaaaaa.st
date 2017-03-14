testing
testParseAaaaaa
	"S ::= a a S | epsilon"
	
	| s0 s1 parser |
	s0 := PPDelegateParser new.
	s1 := $a asParser , $a asParser , s0.
	s0 setParser: s1 / nil asParser.
	parser := s0 flatten.

	self assert: parser parse: '' to: ''.
	self assert: parser parse: 'aa' to: 'aa'.
	self assert: parser parse: 'aaaa' to: 'aaaa'.
	self assert: parser parse: 'aaaaaa' to: 'aaaaaa'.

	self assert: parser parse: 'a' to: '' end: 0.
	self assert: parser parse: 'aaa' to: 'aa' end: 2.
	self assert: parser parse: 'aaaaa' to: 'aaaa' end: 4.
	self assert: parser parse: 'aaaaaaa' to: 'aaaaaa' end: 6