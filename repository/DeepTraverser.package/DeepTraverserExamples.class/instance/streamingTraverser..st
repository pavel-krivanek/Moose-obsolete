examples-streaming
streamingTraverser: graph
	<gtExample>
	<dependsOn: #graph5>
	^ DeepTraverserWithoutAction new 
		on: graph startWith: $a;
		onNodeTraverse: [ :each | self nextElementsFor: each inGraph: graph ];
		yourself