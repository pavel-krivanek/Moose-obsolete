examples-extensions
deepEdgesDo
	<gtExample>
	
	| trace graph |
	graph := self graph1.
	trace := OrderedCollection new.
	1 
		deep: [ :each | self nextElementsFor: each inGraph: graph ]
		edgesDo: [ :from :to | trace add: (from -> to) ].
	self assert: trace = { 1->2. 1->3. 2->3 } asOrderedCollection