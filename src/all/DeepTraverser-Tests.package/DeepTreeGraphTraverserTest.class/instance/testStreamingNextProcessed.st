tests
testStreamingNextProcessed
	| iterator performed |
	iterator := DeepTraverserWithoutEdges new 
		on: graph startWith: $a;
		onNodeTraverse: [ :item | self nextGraphElementsFrom: item ];
		onNodeAction: [ :item | performed := item ];
		yourself.

	#( $a $b $c $d $e $f $g $h $i $j $k ) do: [ :each |
		self assert: iterator next = each ]