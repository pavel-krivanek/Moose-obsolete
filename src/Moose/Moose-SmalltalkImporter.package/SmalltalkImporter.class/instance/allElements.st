enumerating
allElements 
	 
	| stream | 
	stream := (OrderedCollection new: self size) writeStream. 
	stream nextPutAll: others. 
	stream nextPutAll: methods values. 
	stream nextPutAll: self famixClasses. 
	stream nextPutAll: namespaces values. 
	stream nextPutAll: packages values. 
	stream nextPutAll: globals values. 
	scopes do: [:each | stream nextPutAll: each values]. 
	^stream contents