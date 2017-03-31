accessing
leafChildrenDo: aBlock
	self children do: [:each |
		each isComposite 
			ifFalse: [aBlock value: each ]
			ifTrue: [each leafChildrenDo: aBlock ]]