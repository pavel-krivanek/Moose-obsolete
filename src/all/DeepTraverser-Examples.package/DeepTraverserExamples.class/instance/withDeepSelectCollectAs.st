examples-extensions
withDeepSelectCollectAs
	<gtExample>
	
	| result graph |
	graph := self graph1.
	result := 1 
		withDeep: [ :each | self nextElementsFor: each inGraph: graph ]
		select: [ :each | each odd ]
		collect: [ :each | each ]
		as: Set.
	self assert: result = #( 1 3 ) asSet