groups
allWithType: aSmalltalkClass ofGroupClass: aGroupSmalltalkClass
	^ self privateState 
		cacheAt: aSmalltalkClass
		ifAbsentPut: [
			aGroupSmalltalkClass 
				withAll: (self entityStorage selectAllWithType: aSmalltalkClass)
				withDescription: 'All ' , aSmalltalkClass name asLowercase asEnglishPlural ]