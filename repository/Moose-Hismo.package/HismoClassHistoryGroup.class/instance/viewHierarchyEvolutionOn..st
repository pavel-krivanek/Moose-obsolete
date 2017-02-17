view
viewHierarchyEvolutionOn: view

	view shape rectangle 
					width: #evolutionOfNumberOfMethods;
					height: [ :each | each evolutionOfNumberOfLinesOfCode / 8 ];
					fillColor: [ :each | each isRemoved
							ifTrue: [Color cyan]
							ifFalse: [(RTNColorLinearNormalizer
									inContext: [ :x | self ]
									withCommand: [ :entity | entity age ])
									lowColor: Color veryVeryLightGray;
									highColor: Color black;
									rtValue: each ] ].
	view nodes: self.
	
	view shape line 
				color: [ :each | each isRemoved
						ifTrue: [ Color cyan ]
						ifFalse: [ (RTNColorLinearNormalizer
								inContext: [ :x | self ]
								withCommand: [ :entity | entity age ])
								lowColor: Color veryVeryLightGray;
								highColor: Color black;
								rtValue: each ] ].
	view
		edges: self referenceHistory allInheritanceDefinitionHistories
		from: #superHistory
		to: #subHistory.
	view treeLayout.