examples-extensions
withDeepCollectAs: graph
	<gtExample>
	<dependsOn: #graph1>
	
	| result |
	result := 1 
		withDeepCollect: [ :each | self nextElementsFor: each inGraph: graph ]
		as: Set.
	self assert: result asSet = #( 1 2 3 ) asSet