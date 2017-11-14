examples-extensions
deepCollectAsSet
	<gtExample>
	
	| result graph |
	graph := self graph1.
	result := 1 
		deepCollectAsSet: [ :each | self nextElementsFor: each inGraph: graph ].
	self assert: result = #( 2 3 ) asSet