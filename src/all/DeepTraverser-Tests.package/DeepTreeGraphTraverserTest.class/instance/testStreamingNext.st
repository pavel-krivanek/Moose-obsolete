tests
testStreamingNext
	| iterator performed |
	iterator := DeepTraverserWithoutEdges new 
		on: graph startWith: $a;
		onNodeTraverse: [ :item | self nextGraphElementsFrom: item ];
		onNodeAction: [ :item | performed := item ];
		yourself.

	self assert: iterator current isNil.
	self assert: iterator next = $a.
	self assert: iterator next = $b.	
	self assert: iterator next = $c.
	self assert: iterator next = $d.
	self assert: iterator next = $e.
	self assert: iterator next = $f.
	self assert: iterator next = $g.
	self assert: iterator next = $h.
	self assert: iterator next = $i.
	self assert: iterator next = $j.
	self assert: iterator next = $k.
	
	self assert: performed = $k.
	self should: [ iterator next ] raise: Error