*Famix-Extensions
allModelMethods
	<navigation: 'All model methods'>
	
	^ self privateState
		cacheAt: 'All model methods'
		ifAbsentPut: [ self allMethods reject: [ :each | each parentTypeIsStub ] ]