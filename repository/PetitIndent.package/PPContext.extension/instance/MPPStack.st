*PetitIndent
MPPStack
	^ self globalAt: #mppstack ifAbsentPut: [ Stack with: 1 ]