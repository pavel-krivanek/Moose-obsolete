examples-extensions
deepFlatCollect: graph
	<gtExample>
	<dependsOn: #graph1>
	
	| result |
	result := 1 
		deep: [ :each | self nextElementsFor: each inGraph: graph ]
		flatCollect: [ :each | 1 to: each ].
	self assert: result = #( 1 2 1 2 3 ) asOrderedCollection