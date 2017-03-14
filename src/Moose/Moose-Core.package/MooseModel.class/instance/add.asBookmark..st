entity collection
add: aBookmarkedGroup asBookmark: aString
	 
	self privateState cacheAt: aString put: aBookmarkedGroup.
	self announcer announce: (MooseEntityAdded new entity: aBookmarkedGroup).
	^ aBookmarkedGroup