*roassal2
sourceNonEmptyCodeLinesCached
	"Retrieve or reconstruct the source code for this method.
	Return the list of lines defining the source code.
	Cache the source to speedup accesses"
	
	"
	[ 10000 timesRepeat: [ (self >> #sourceNonEmptyCodeLinesCached) sourceCodeLinesCached ] ] timeToRun
	[ 10000 timesRepeat: [ (self >> #sourceNonEmptyCodeLinesCached) sourceNonEmptyCodeLinesCached ] ] timeToRun
	"
	
	(self hasProperty: #sourceNonEmptyCodeLinesCached) 
		ifFalse: [ 
			self propertyValueAt: #sourceNonEmptyCodeLinesCached put: (self sourceCode lines reject: [ :l | l trim isEmpty ]).
			self propertyValueAt: #sourceNonEmptyCodeLinesCached ].
	^ self propertyValueAt: #sourceNonEmptyCodeLinesCached