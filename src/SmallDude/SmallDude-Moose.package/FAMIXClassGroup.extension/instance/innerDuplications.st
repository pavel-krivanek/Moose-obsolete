*SmallDude-Moose-ui
innerDuplications 
	 
	^self mooseModel allDuplications 
		select: 
			[:each |  
			(self includes: each duplicatingEntity) 
				and: [self includes: each referenceEntity]]