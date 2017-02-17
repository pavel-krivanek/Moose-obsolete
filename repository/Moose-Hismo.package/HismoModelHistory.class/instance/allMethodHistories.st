groups
allMethodHistories
	<navigation: 'All method histories'>
	^ self 
		allWithType: HismoMethodHistory
		ifAbsentPut: 
			[ self 
				computeSubHistoriesWithType: HismoMethodHistory
				computedForEachVersionAs: [ :version | version allMethods ]
				withDescription: 'All Method Histories' ]