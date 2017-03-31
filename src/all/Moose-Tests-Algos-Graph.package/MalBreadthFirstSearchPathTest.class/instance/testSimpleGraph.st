as yet unclassified
testSimpleGraph
	"
	self debug: #testSimpleGraph
	"

	MalGraphFixture simpleGraph: bfsp.
	self assert: (#($a $b $c) hasEqualElements: (bfsp runFrom: $a to: $c)).
	self assert: (#($d $c) hasEqualElements: (bfsp runFrom: $d to: $c)).