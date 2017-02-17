as yet unclassified
testAseGraph
	"
	self debug: #testAseGraph
	"

	MalGraphFixture aseCircuitGraph: bfsp.
	self assert: (#($a $b $c) hasEqualElements: (bfsp runFrom: $a to: $c)).
	self assert: (#($d $b $c) hasEqualElements: (bfsp runFrom: $d to: $c)).
	self assert: (#($e $a) hasEqualElements: (bfsp runFrom: $e to: $a)).
	self assert: (#($a $b $d $e) hasEqualElements: (bfsp runFrom: $a to: $e)).
	self assert: (#($d $b $c $f) hasEqualElements: (bfsp runFrom: $d to: $f)).
	self should: [bfsp runFrom: $f to: $a] raise: Error.
