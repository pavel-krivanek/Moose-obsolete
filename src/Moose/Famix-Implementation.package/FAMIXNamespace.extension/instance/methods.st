*Famix-Implementation
methods
	^ self privateState 
			cacheAt: #methods 
			ifAbsentPut: [ 
				self classes flatCollect: #methods ]