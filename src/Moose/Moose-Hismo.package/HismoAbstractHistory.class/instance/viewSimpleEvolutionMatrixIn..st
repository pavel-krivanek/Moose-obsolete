view
viewSimpleEvolutionMatrixIn: aView
	
	aView shape rectangle color: [ :x | Color lightGray ].
	aView 
		node: self 
		forIt: [
			aView shape rectangle 
				color: [:each | each == each referenceVersion ifTrue: [Color lightGray] ifFalse: [Color white] ].
			aView nodes: (self completeHistoryCollect: [:each | each] 
										ifNotPresent: [:eachRefVersion | eachRefVersion]).
		]