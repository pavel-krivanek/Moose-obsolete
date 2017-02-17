testing
testParseAbAbAb
	"S ::= (A B)+"
	
	| parser |
	parser := ($a asParser , $b asParser) plus flatten.

	self assert: parser parse: 'ab' to: 'ab'.
	self assert: parser parse: 'abab' to: 'abab'.
	self assert: parser parse: 'ababab' to: 'ababab'.
	self assert: parser parse: 'abababab' to: 'abababab'.

	self assert: parser parse: 'abb' to: 'ab' end: 2.
	self assert: parser parse: 'ababa' to: 'abab' end: 4.
	self assert: parser parse: 'abababb' to: 'ababab' end: 6.
	self assert: parser parse: 'ababababa' to: 'abababab' end: 8.
	
	self assert: parser fail: ''.
	self assert: parser fail: 'a'.
	self assert: parser fail: 'bab'