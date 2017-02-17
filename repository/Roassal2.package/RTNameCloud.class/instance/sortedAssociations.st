accessing
sortedAssociations
	^ self tableObjects 
		ifEmpty: [ tableFrequency associations reverseSortedAs: #value ]
		ifNotEmpty: [ self tableObjects associations reverseSortedAs: [ :assoc | assoc value size ] ].