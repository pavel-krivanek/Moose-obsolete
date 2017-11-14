examples-extensions
withDeepCollect
	<gtExample>
	
	| result graph |
	graph := self graph1.
	result := 1 
		withDeepCollect: [ :each | self nextElementsFor: each inGraph: graph ].
	self assert: result = #( 1 2 3 ) asOrderedCollection