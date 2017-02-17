*roassal2
sourceCodeCached
	"Retrieve or reconstruct the source code for this method.
	Cache the source to speedup accesses"
	
	"
	[ 10000 timesRepeat: [ (self >> #sourceCodeCached) sourceCode ] ] timeToRun
	[ 10000 timesRepeat: [ (self >> #sourceCodeCached) sourceCodeCached ] ] timeToRun
	"
	
	(self hasProperty: #sourceCode) 
		ifFalse: [ 
			self propertyValueAt: #sourceCode put: self sourceCode.
			self propertyValueAt: #sourceCode ].
	^ self propertyValueAt: #sourceCode