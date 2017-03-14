tests
testAseBasicCircuitBacktrack
	"
	self debug: #testAseBasicCircuitBacktrack 
	"

	MalGraphFixture aseCircuitGraph: dijsktra.
	"self halt."
	self assert: (#($a $b) hasEqualElements: (dijsktra runFrom: $a to: $b; backtrack)).
	dijsktra reset.
	self assert: (#($a $b $d $e) hasEqualElements: (dijsktra runFrom: $a to: $e; backtrack)).
	dijsktra reset.
	self assert: (#($c $d $b) hasEqualElements: (dijsktra runFrom: $c to: $b; backtrack)).
	dijsktra reset.
	self assert: (#($a $b $c $f $g $h) hasEqualElements: (dijsktra runFrom: $a to: $h; backtrack)).
	dijsktra reset.
	self assert: (#() hasEqualElements: (dijsktra runFrom: $h to: $a; backtrack))