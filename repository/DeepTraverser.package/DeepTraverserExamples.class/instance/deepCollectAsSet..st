examples-extensions
deepCollectAsSet: graph
	<gtExample>
	<dependsOn: #graph1>
	
	| result |
	result := 1 
		deepCollectAsSet: [ :each | self nextElementsFor: each inGraph: graph ].
	self assert: result = #( 2 3 ) asSet