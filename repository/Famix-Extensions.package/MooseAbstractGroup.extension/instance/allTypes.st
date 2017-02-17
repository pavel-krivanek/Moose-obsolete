*Famix-Extensions
allTypes
	<navigation: 'All types'>

	^ self privateState cacheAt: 'All types'
		ifAbsentPut: [
			MooseGroup
				withAll: ((self allWithSubTypesOf: FAMIXType ofGroupClass: FAMIXTypeGroup) )
				withDescription: 'All types' ]