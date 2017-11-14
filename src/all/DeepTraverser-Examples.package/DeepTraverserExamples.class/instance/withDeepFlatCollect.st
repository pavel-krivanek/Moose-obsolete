examples-extensions
withDeepFlatCollect
	<gtExample>
	
	| result graph |
	graph := self graph1.	result := 1 
		withDeep: [ :each | self nextElementsFor: each inGraph: graph ]
		flatCollect: [ :each | each to: 4 ].
	self assert: result = #( 1 2 3 4 2 3 4 3 4 ) asOrderedCollection