examples-extensions
deepCollectSimple
	<gtExample>
	
	| result graph |
	graph := self graph1.
	result := 1 
		deepCollect: [ :each | self nextElementsFor: each inGraph: graph ].
	self assert: result = #( 2 3 ) asOrderedCollection