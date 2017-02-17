testing
testEvenNumber
	"Create a grammar that parses an even number of a's and b's."
	
	| a as b bs s |
	a := $a asParser ==> [ :char | as := as + 1 ].
	b := $b asParser ==> [ :char | bs := bs + 1 ].
	s := (a / b) star >=> [ :stream :cc |
		as := bs := 0.
		cc value.
		(as even and: [ bs even ])
			ifFalse: [ PPFailure message: 'Even number of a and b expected' context: stream at: 0 ] ].

	self assert: s fail: 'a' end: 1.
	self assert: s fail: 'b' end: 1.
	self assert: s fail: 'ab' end: 2.
	self assert: s fail: 'ba' end: 2.
	self assert: s fail: 'aaa' end: 3.
	self assert: s fail: 'bbb' end: 3.
	self assert: s fail: 'aab' end: 3.
	self assert: s fail: 'abb' end: 3.
	
	self assert: s parse: ''.
	self assert: s parse: 'aa'.
	self assert: s parse: 'bb'.
	self assert: s parse: 'aaaa'.
	self assert: s parse: 'aabb'.
	self assert: s parse: 'abab'.
	self assert: s parse: 'baba'.
	self assert: s parse: 'bbaa'.
	self assert: s parse: 'bbbb'