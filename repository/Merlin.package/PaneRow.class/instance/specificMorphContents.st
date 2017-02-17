accessing - morph contents
specificMorphContents
		
	^ self newRowWith: (self subComponents collect: [:aPaneLine | self newColumnWith: {aPaneLine morphContents}])