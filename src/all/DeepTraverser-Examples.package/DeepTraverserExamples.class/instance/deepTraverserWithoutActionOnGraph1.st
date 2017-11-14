utils
deepTraverserWithoutActionOnGraph1
	<gtExample>
	<subjectClass: #DeepTraverserWithoutAction>
	| graph |
	graph := self graph1.
	^ DeepTraverserWithoutAction new 
		onNodeTraverse: [ :each | self nextElementsFor: each inGraph: graph ];
		on: graph startWith: 0;
		yourself