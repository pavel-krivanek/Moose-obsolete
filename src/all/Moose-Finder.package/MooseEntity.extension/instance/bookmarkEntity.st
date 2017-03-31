*Moose-Finder
bookmarkEntity
	<menuItem: 'Bookmark Entity' category: 'Utilities'>
	
	| groupName group |
	groupName := UIManager default 
		request: 'Enter description'
		initialAnswer: self description.
	(groupName isNil or: [ groupName size = 0 ]) ifTrue: [ ^ self ].
	self bookmarkAs: groupName		