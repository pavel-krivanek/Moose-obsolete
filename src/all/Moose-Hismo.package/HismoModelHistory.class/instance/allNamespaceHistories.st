groups
allNamespaceHistories
	<navigation: 'All namespace histories'>
	^ self 
		allWithType: HismoNamespaceHistory
		ifAbsentPut: 
			[ self 
				computeSubHistoriesWithType: HismoNamespaceHistory
				computedForEachVersionAs: [ :version | version allNamespaces ]
				withDescription: 'All Namespace Histories' ]