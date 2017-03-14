*Moose-Finder
allBookmarkedGroups
	<navigation: 'All bookmarked groups'>
	^ MooseGroup 
		withAll: (self entityCache select:
							 [:group| group propertyNamed: #bookmarked ifNil: [ false ]])
		withDescription: 'Bookmarked groups'