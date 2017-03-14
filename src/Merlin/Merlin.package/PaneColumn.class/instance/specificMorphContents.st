accessing - morph contents
specificMorphContents

	^ self newColumnWith: (self subComponents collect: [:aPaneLine | self newRowWith: {aPaneLine morphContents}])
		