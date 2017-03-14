meta information
navigationSelectors
	^ (Pragma allNamed: #navigation: from: self class to: MooseEntity)
		collect: [ :p | p methodSelector ]