tests-sed
testAseSccWithSed
	"
	self debug: #testAseScc 
	"

	| sed circuits |
	sed := MalSccEdgeDecomposition new.
	MalGraphFixture aseSccGraph: sed.
	sed run.
	self assert: 4
			equals: sed circuits size.
	circuits := sed circuits asOrderedCollection.
	#(($b $d) ($a $b) ($b $c $d) ($a $b $d $e)) do: [:c|
			self assert: (circuits anySatisfy: [:ci| c hasEqualElements: ci ])].
