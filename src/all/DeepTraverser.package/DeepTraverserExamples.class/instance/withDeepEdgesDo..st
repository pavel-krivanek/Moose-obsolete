examples-extensions
withDeepEdgesDo: graph
	<gtExample>
	<dependsOn: #graph1>
	
	| trace |
	trace := OrderedCollection new.
	0 
		withDeep: [ :each | self nextElementsFor: each inGraph: graph ] 
		edgesDo: [ :from :to | trace add: (from -> to) ].
	self assert: trace = { 0->1. 1->2. 1->3. 2->3 } asOrderedCollection