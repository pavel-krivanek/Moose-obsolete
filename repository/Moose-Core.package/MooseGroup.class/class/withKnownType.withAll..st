instance creation
withKnownType: anSTClass withAll: collection 
	^ (anSTClass new: collection size) initializeWithAll: collection