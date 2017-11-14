tests
testStreaming
	| iterator performed |
	iterator := DeepTraverserWithoutEdges new 
		on: graph startWith: $a;
		onNodeTraverse: [ :item | self nextGraphElementsFrom: item ];
		onNodeAction: [ :item | performed := item ];
		yourself.
 
	self assert: iterator next = $a.
	self assert: iterator next = $b.	
		
	self assert: (iterator next: 4) = { $c. $d. $e. $f }.
	self assert: (iterator next: 4) = { $g. $h. $i. $j }.
	
	self shouldnt: [ iterator upToEnd ] raise: Error.
	self shouldnt: [ iterator upToEnd ] raise: Error.
	
	self should: [ iterator next ] raise: Error.