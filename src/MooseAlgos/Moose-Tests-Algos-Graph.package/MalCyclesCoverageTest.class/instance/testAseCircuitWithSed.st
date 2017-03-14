tests-sed
testAseCircuitWithSed
	"
	self debug: #testAseCircuitWithSed 
	"

	cc useEdgeDecomposition.
	MalGraphFixture aseCircuitGraph: cc.
	cc run.
	self assert: 5
			equals: cc circuits size.
	#(($g $h) ($b $d) ($a $b) ($b $c $d) ($a $b $d $e)) do: [:c|
			self assert: (cc circuits anySatisfy: [:ci| c hasEqualElements: ci ])].
