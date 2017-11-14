examples-extensions
deepFlatCollectAs
	<gtExample>
	
	| result graph |
	graph := self graph1.
	result := 1 
		deep: [ :each | self nextElementsFor: each inGraph: graph ]
		flatCollect: [ :each | 1 to: each ]
		as: Set.
	self assert: result = #( 1 2 3 ) asSet