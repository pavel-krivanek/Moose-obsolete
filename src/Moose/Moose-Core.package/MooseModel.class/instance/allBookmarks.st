accessing
allBookmarks
	<navigation: 'All bookmarks'>
	^ MooseGroup 
		withAll: (self entityCache select: [:group| group isBookmarked ])
		withDescription: 'Bookmarks'