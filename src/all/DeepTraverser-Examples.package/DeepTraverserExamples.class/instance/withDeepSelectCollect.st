examples-extensions
withDeepSelectCollect
	<gtExample>
	
	| result graph |
	graph := self graph1.
	result := 1 
		withDeep: [ :each | self nextElementsFor: each inGraph: graph ]
		select: [ :each | each odd ]
		collect: [ :each | each * 10 ].
	self assert: result = #( 10 30 ) asOrderedCollection