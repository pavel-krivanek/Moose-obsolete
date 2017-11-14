examples-streaming
streamingTraverser
	<gtExample>
	| graph |
	graph := self graph5.
	^ DeepTraverserWithoutAction new 
		on: graph startWith: $a;
		onNodeTraverse: [ :each | self nextElementsFor: each inGraph: graph ];
		yourself