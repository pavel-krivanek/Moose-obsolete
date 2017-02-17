examples-extensions
deepDo: graph
	<gtExample>
	<dependsOn: #graph1>
	
	| trace |
	trace := OrderedCollection new.
	1 
		deep: [ :each | self nextElementsFor: each inGraph: graph ]
		do: [ :each | trace add: each ].
	self assert: trace = #( 2 3 ) asOrderedCollection