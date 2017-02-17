properties
isOnLineWith: segm
	self = segm 
		ifTrue:[^ true]
		ifFalse:[^ self asLine = (segm asLine)]