utils
deepTraverserOnGraph1: graph
	<gtExample>
	<dependsOn: #graph1>
	<subjectClass: #DeepTraverser>
	^ DeepTraverser new 
		onNodeTraverse: [ :each | self nextElementsFor: each inGraph: graph ];
		on: graph startWith: 0;
		yourself