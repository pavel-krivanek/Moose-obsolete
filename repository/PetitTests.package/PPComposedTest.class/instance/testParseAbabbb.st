testing
testParseAbabbb
	"S ::= (A | B)+"

	| parser |
	parser := ($a asParser / $b asParser) plus flatten.

	self assert: parser parse: 'a' to: 'a'.
	self assert: parser parse: 'b' to: 'b'.
	self assert: parser parse: 'ab' to: 'ab'.
	self assert: parser parse: 'ba' to: 'ba'.
	self assert: parser parse: 'aaa' to: 'aaa'.
	self assert: parser parse: 'aab' to: 'aab'.
	self assert: parser parse: 'aba' to: 'aba'.
	self assert: parser parse: 'baa' to: 'baa'.
	self assert: parser parse: 'abb' to: 'abb'.
	self assert: parser parse: 'bab' to: 'bab'.
	self assert: parser parse: 'bba' to: 'bba'.
	self assert: parser parse: 'bbb' to: 'bbb'.

	self assert: parser parse: 'ac' to: 'a' end: 1.
	self assert: parser parse: 'bc' to: 'b' end: 1.
	self assert: parser parse: 'abc' to: 'ab' end: 2.
	self assert: parser parse: 'bac' to: 'ba' end: 2.
	
	self assert: parser fail: ''.
	self assert: parser fail: 'c'