groups
allWithSubTypesOf: aSmalltalkClass ofGroupClass:  aGroupSmalltalkClass
	^ self privateState cacheAt: aSmalltalkClass
		ifAbsentPut: [
			aGroupSmalltalkClass 
				withAll: (aSmalltalkClass withMooseSubclasses flatCollect: [:each |
		self entityStorage selectAllWithType: each ])
				withDescription: 'All ' , aSmalltalkClass name asLowercase asEnglishPlural]