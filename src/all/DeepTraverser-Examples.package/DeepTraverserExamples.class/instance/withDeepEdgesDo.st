examples-extensions
withDeepEdgesDo
	<gtExample>
	
	| trace graph |
	graph := self graph1.
	trace := OrderedCollection new.
	0 
		withDeep: [ :each | self nextElementsFor: each inGraph: graph ] 
		edgesDo: [ :from :to | trace add: (from -> to) ].
	self assert: trace = { 0->1. 1->2. 1->3. 2->3 } asOrderedCollection