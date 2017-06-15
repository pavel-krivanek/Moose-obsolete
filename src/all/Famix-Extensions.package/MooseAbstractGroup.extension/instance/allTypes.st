*Famix-Extensions
allTypes
	<navigation: 'All types'>

	^ self privateState cacheAt: 'All types'
		ifAbsentPut: [
			(self allWithSubTypesOf: FAMIXType ofGroupClass: FAMIXTypeGroup)
				description: 'All types' ]