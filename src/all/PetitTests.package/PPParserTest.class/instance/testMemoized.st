testing
testMemoized
	| count parser twice |
	count := 0.
	parser := [ :s | 
	count := count + 1.
	s next ] asParser memoized.
	twice := parser and , parser.
	count := 0.
	self assert: parser parse: 'a' to: $a.
	self assert: count equals: 1.
	count := 0.
	self assert: twice parse: 'a' to: #($a $a).
	self assert: count equals: 1.
	self assert: parser memoized equals: parser