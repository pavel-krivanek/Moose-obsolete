*Moose-Finder
allBookmarkedGroups
	<navigation: 'All bookmarked groups'>
	^ MooseGroup withAll: (self entityCache select: [ :group | group asMooseGroup propertyNamed: #bookmarked ifNil: [ false ] ]) withDescription: 'Bookmarked groups'