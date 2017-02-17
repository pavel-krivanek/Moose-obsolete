groups
allClassHistories
	<navigation: 'All class histories'>
	^ self 
		allWithType: HismoClassHistory
		ifAbsentPut: 
			[ self 
				computeSubHistoriesWithType: HismoClassHistory
				computedForEachVersionAs: [ :version | version allClasses ]
				withDescription: 'All Class Histories' ]