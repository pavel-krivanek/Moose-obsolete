groups
allWithTrait: aSmalltalkClass ofGroupClass: aGroupSmalltalkClass
	^ self privateState 
		cacheAt: aSmalltalkClass
		ifAbsentPut: [
			aGroupSmalltalkClass 
				withAll: (self entityStorage selectAllWithTrait: aSmalltalkClass)
				withDescription: 'All ' , aSmalltalkClass name asLowercase asEnglishPlural ]