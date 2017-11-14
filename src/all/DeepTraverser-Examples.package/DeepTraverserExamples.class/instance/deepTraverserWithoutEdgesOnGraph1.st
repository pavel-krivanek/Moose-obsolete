utils
deepTraverserWithoutEdgesOnGraph1
	<gtExample>
	<subjectClass: #DeepTraverserWithoutEdges>
	| graph |
	graph := self graph1.
	^ DeepTraverserWithoutEdges new 
		onNodeTraverse: [ :each | self nextElementsFor: each inGraph: graph ];
		on: graph startWith: 0;
		yourself