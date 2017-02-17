tests
testSimple
	| a b c d |
	MalGraphFixture simpleGraph: dom.
	dom run.
	dom nodes
		do: [ :n | 
			n model = $a
				ifTrue: [ 
					self assert: n isDominant.
					self deny: n isDominated ]
				ifFalse: [ self deny: n isDominant ] ].
	a := dom findNode: $a.
	b := dom findNode: $b.
	c := dom findNode: $c.
	d := dom findNode: $d.
	self assert: b find equals: a.
	self deny: c isDominated.
	self deny: d isDominated