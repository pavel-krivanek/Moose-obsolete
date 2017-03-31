accessing
computeResult 
	^ self model allMethods select: [:each | each belongsTo isNil]