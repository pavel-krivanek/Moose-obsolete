initialize-release
initialize

	super initialize.
	initialListIndex := 0.
	selectionListIndex := 0.
	self textEntryMessage: 'Select items with a Smalltalk condition'.  
	selectionList := SortedCollection new.
	

	