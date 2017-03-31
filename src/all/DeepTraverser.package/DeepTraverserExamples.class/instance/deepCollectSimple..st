examples-extensions
deepCollectSimple: graph
	<gtExample>
	<dependsOn: #graph1>
	
	| result |
	result := 1 
		deepCollect: [ :each | self nextElementsFor: each inGraph: graph ].
	self assert: result = #( 2 3 ) asOrderedCollection