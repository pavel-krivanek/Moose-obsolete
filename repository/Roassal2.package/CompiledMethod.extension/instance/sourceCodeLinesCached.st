*roassal2
sourceCodeLinesCached
	"Retrieve or reconstruct the source code for this method.
	Return the list of lines defining the source code.
	Cache the source to speedup accesses"
	
	"
	[ 10000 timesRepeat: [ (self >> #sourceCodeCached) sourceCode ] ] timeToRun
	[ 10000 timesRepeat: [ (self >> #sourceCodeCached) sourceCodeCached ] ] timeToRun
	"
	
	(self hasProperty: #sourceCodeLinesCached) 
		ifFalse: [ 
			self propertyValueAt: #sourceCodeLinesCached put: self sourceCode lines.
			self propertyValueAt: #sourceCodeLinesCached ].
	^ self propertyValueAt: #sourceCodeLinesCached