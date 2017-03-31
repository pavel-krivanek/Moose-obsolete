tests
testComplexCycle2
	| circuits |
	MalGraphFixture complexCycleGraph2: tarjan.
	circuits := tarjan 
		run;
		circuits.
	#($a $c $g $h $i) 
		do: [ :each | self deny: (tarjan findNode: each) isInCycle ].
	self
		assert: circuits size
		equals: 1.
	self assert: ((circuits first collect: #model) includesAll: #($b $d $e $f))