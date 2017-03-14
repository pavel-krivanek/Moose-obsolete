*Famix-Implementation
classes

	^ self privateState 	cacheAt: #classes 
							ifAbsentPut: [ childNamedEntities select: [ :child | child isClass ]]