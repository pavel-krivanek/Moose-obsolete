*Famix-Extensions
allModelTypes
	<navigation: 'All model types'>

	^ self privateState cacheAt: 'All model types'
		ifAbsentPut: [
			(self allTypes reject: [:each | each isStub ])
				description: 'All model types' ]