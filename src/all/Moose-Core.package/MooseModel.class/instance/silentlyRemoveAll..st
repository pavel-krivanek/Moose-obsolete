entity collection
silentlyRemoveAll: collection 
	
	collection do: [:each | self silentlyRemove: each].
	^collection
	