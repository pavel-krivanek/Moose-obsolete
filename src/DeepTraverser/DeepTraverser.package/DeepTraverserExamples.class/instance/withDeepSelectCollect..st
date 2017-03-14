examples-extensions
withDeepSelectCollect: graph
	<gtExample>
	<dependsOn: #graph1>
	
	| result |
	result := 1 
		withDeep: [ :each | self nextElementsFor: each inGraph: graph ]
		select: [ :each | each odd ]
		collect: [ :each | each * 10 ].
	self assert: result = #( 10 30 ) asOrderedCollection