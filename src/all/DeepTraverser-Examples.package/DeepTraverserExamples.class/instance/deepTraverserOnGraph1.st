utils
deepTraverserOnGraph1
	<gtExample>
	<subjectClass: #DeepTraverser>
	| graph |
	graph := self graph1.
	^ DeepTraverser new 
		onNodeTraverse: [ :each | self nextElementsFor: each inGraph: graph ];
		on: graph startWith: 0;
		yourself