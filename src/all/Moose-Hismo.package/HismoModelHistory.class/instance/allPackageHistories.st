groups
allPackageHistories
	<navigation: 'All package histories'>
	^ self 
		allWithType: HismoPackageHistory
		ifAbsentPut: 
			[ self 
				computeSubHistoriesWithType: HismoPackageHistory
				computedForEachVersionAs: [ :version | version allPackages ]
				withDescription: 'All Package Histories' ]