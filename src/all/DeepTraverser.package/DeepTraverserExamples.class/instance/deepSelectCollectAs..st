examples-extensions
deepSelectCollectAs: graph
	<gtExample>
	<dependsOn: #graph1>
	
	| result |
	result := 1 
		deep: [ :each | self nextElementsFor: each inGraph: graph ]
		select: [ :each | each odd ]
		collect: [ :each | each ]
		as: Set.
	self assert: result = #( 3 ) asSet