tests-cse
testAseSccWithCse
	"
	self debug: #testAseSccWithCse 
	"

	| cse |
	cse := MalCircuitSpanningEdges new.
	MalGraphFixture aseSccGraph: cse.
	cse run.
	self assert: 4
			equals: cse circuits size.
	self assert: (#($a $b) hasEqualElements: cse circuits first).
	self assert: (#($b $d) hasEqualElements: cse circuits second).
	self assert: (#($c $d $b) hasEqualElements: cse circuits third).
	self assert: (#($e $a $b $d) hasEqualElements: cse circuits fourth).