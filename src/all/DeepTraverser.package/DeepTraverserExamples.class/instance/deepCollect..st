examples-extensions
deepCollect: graph
	<gtExample>
	<dependsOn: #graph1>
	
	| result |
	result := 1 
		deep: [ :each | self nextElementsFor: each inGraph: graph ]
		collect: [ :each | each * 10 ].
	self assert: result = #( 20 30 ) asOrderedCollection