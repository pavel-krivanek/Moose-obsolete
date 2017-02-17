groups
allAttributeHistories
	<navigation: 'All attribute histories'>
	^ self 
		allWithType: HismoAttributeHistory
		ifAbsentPut: 
			[ self 
				computeSubHistoriesWithType: HismoAttributeHistory
				computedForEachVersionAs: [ :version | version allAttributes ]
				withDescription: 'All Attribute Histories' ]