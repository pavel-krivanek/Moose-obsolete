accessing
allBookmarks
	<navigation: 'All bookmarks'>
	^ MooseGroup withAll: (self entityCache select: [ :group | group asMooseGroup isBookmarked ]) withDescription: 'Bookmarks'