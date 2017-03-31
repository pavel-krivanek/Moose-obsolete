*Famix-Extensions
allModelNamespaces
	<navigation: 'All model namespaces'>

	^ self privateState cacheAt: 'All model namespaces'
		ifAbsentPut: [
			MooseGroup
				withAll: (self allNamespaces select: [:each | 
					each classes notEmpty and: [
						each classes anySatisfy: [:class | class isStub not]]])
				withDescription: 'All model namespaces' ]