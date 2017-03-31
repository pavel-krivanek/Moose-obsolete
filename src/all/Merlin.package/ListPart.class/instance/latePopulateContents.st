accessing
latePopulateContents 

	(self valueOf: self defaultValue) ifNotNil: [:anIndex |
		self selectionIndex: anIndex
		]    