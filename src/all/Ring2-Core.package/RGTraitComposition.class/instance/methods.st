queries - methods
methods

	^ Array streamContents: [ :stream | 
		self transformationsDo: [ :transformation | stream nextPutAll: transformation methods ]]