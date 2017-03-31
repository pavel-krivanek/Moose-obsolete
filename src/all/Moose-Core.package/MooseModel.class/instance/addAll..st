entity collection
addAll: entities 
	 
	entities do: [:each | self add: each]. 
	^entities