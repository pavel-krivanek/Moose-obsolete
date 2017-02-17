utils
deepTraverserWithoutEdgesOnGraph1: graph
	<gtExample>
	<dependsOn: #graph1>
	<subjectClass: #DeepTraverserWithoutEdges>
	
	^ DeepTraverserWithoutEdges new 
		onNodeTraverse: [ :each | self nextElementsFor: each inGraph: graph ];
		on: graph startWith: 0;
		yourself