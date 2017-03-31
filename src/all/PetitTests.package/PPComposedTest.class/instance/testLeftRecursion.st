testing
testLeftRecursion
	"S ::= S 'x' S / '1'"
	
	| parser |
	parser := PPDelegateParser new.
	parser setParser: ((parser , $x asParser , parser) / $1 asParser) memoized flatten.

	self assert: parser parse: '1' to: '1'.
	self assert: parser parse: '1x1' to: '1x1'.
	self assert: parser parse: '1x1x1' to: '1x1x1'.
	self assert: parser parse: '1x1x1x1' to: '1x1x1x1'.
	self assert: parser parse: '1x1x1x1x1' to: '1x1x1x1x1'.
	self assert: parser parse: '1x1x1x1x1x1' to: '1x1x1x1x1x1'