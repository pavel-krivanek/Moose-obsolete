examples-extensions
deepSelect
	<gtExample>
	
	| result graph |
	graph := self graph1.
	result := 1 
		deep: [ :each | self nextElementsFor: each inGraph: graph ]
		select: [ :each | each < 3 ].
	self assert: result = #( 2 ) asOrderedCollection