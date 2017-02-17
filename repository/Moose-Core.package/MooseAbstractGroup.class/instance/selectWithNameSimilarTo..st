enumerating
selectWithNameSimilarTo: anEntity
	^ self select: [:each | 
		each ~= anEntity and: [
			(each name pairsSimilarityWith: anEntity name) > 0.5]]