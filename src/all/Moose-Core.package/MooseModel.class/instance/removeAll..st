entity collection
removeAll: collection 
	 collection do: [:each | self remove: each]. 