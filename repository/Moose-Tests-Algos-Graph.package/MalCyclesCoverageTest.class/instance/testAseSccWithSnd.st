tests-snd
testAseSccWithSnd
	"
	self debug: #testAseSccWithSnd 
	"

	| sed circuits |
	sed := MalSccNodeDecomposition new.
	MalGraphFixture aseSccGraph: sed.
	sed run.
	self assert: 4
			equals: sed circuits size.
	circuits := sed circuits asOrderedCollection.
	#(($b $d) ($a $b) ($b $c $d) ($a $b $d $e)) do: [:c|
			self assert: (circuits anySatisfy: [:ci| c hasEqualElements: ci ])].
