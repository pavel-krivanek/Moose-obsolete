instance creation
new: aCapacity
	^ self basicNew setCollection: (self collectionClass new: aCapacity)