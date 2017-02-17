utils
deepTraverserWithoutActionOnGraph1: graph
	<gtExample>
	<dependsOn: #graph1>
	<subjectClass: #DeepTraverserWithoutAction>

	^ DeepTraverserWithoutAction new 
		onNodeTraverse: [ :each | self nextElementsFor: each inGraph: graph ];
		on: graph startWith: 0;
		yourself