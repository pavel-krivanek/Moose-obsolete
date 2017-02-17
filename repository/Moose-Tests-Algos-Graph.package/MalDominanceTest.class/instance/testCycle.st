tests
testCycle
	| a b c |
	MalGraphFixture cycleGraph: dom.
	dom run.
	dom nodes
		do: [ :n | 
			n model = $c
				ifTrue: [ 
					self assert: n isDominant.
					self deny: n isDominated ]
				ifFalse: [ 
					self deny: n isDominant.
					n model = $d
						ifTrue: [ self deny: n isDominated ]
						ifFalse: [ self assert: n isDominated ] ] ].
	a := dom findNode: $a.
	b := dom findNode: $b.
	c := dom findNode: $c.
	self assert: a find equals: c.
	self assert: b find equals: c