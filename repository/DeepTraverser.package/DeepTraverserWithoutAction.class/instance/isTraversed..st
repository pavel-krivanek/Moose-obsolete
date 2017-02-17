private
isTraversed: anObject
	" return true if anObject has already been traversed and action was performed "
	^ objectsTraversed includes: anObject