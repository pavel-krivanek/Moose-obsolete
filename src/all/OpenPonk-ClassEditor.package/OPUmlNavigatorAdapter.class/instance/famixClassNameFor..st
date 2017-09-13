accessing
famixClassNameFor: anObject
	^ (anObject className splitOn: 'FAMIX') last