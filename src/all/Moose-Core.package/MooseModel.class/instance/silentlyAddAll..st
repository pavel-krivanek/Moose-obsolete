entity collection
silentlyAddAll: entities 
	 
	entities do: [:each | self addNoAnnounce: each].
	^entities