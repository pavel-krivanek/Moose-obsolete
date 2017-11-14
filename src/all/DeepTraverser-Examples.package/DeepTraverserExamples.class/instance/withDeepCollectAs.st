examples-extensions
withDeepCollectAs
	<gtExample>
	
	| result graph |
	graph := self graph1.
	result := 1 
		withDeepCollect: [ :each | self nextElementsFor: each inGraph: graph ]
		as: Set.
	self assert: result asSet = #( 1 2 3 ) asSet