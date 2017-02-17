testing-fixtures
testSideEffectSequence
	"Adding another element to a sequence should create a copy, otherwise we get unwanted side-effects."

	| p1 p2 p3 |
	p1 := $a asParser.
	p2 := p1 , $b asParser.
	p3 := p1 , $c asParser.
	
	self assert: p1 parse: 'a'.	
	self assert: p1 parse: 'ab' end: 1.
	self assert: p1 parse: 'ac' end: 1.
	
	self assert: p2 fail: 'a'.	
	self assert: p2 parse: 'ab'.
	self assert: p2 fail: 'ac'.

	self assert: p3 fail: 'a'.	
	self assert: p3 fail: 'ab'.
	self assert: p3 parse: 'ac'