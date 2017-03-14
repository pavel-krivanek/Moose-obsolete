groups
allInheritanceDefinitionHistories
	<navigation: 'All inheritance definition histories'>
	^ self 
		allWithType: HismoInheritanceDefinitionHistory
		ifAbsentPut: 
			[ self 
				computeSubHistoriesWithType: HismoInheritanceDefinitionHistory
				computedForEachVersionAs: [ :version | version allInheritanceDefinitions ]
				withDescription: 'All Inheritance Definition Histories' ]