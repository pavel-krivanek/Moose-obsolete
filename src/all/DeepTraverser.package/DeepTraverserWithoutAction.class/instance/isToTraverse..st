private
isToTraverse: anObject
	" return true if anObject has not been scheduled/postponed for later traversal and action "
	objectsToTraverse reverseDo: [ :each | 
		each == anObject ifTrue: [ 
			^ true ] ].
	^ false