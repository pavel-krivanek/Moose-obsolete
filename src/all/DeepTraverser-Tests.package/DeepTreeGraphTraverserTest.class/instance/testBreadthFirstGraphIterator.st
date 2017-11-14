tests
testBreadthFirstGraphIterator
	self assert: #( $a $b $c $d $e $f $g $h $i $j $k ) 
		graph: graph 
		iterator: DeepTraverserWithoutEdges
		start: $a.
	
	self assert: #( $a $b $c $d $e $f $g $h $i $j $k ) = ($a
		withDeep: [ :item | self nextGraphElementsFrom: item ]
		collect: [ :item | item ]) asArray.
		
	self assert: #( $a $b $c $d $e $f $g $h $i $j $k ) 
		graph: tree 
		iterator: DeepTraverserWithoutEdges
		start: $a.
	
	self assert: #( $a $b $c $d $e $f $g $h $i $j $k ) = ($a
		withDeep: [ :item | self nextTreeElementsFrom: item ]
		collect: [ :item | item ]) asArray.
	