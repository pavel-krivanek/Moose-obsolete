initialize-release
initialize

	super initialize.
	initialListSelectionIndex := 0.

	selectionListSelectionIndex := 0.
	selectionList := SortedCollection new.
	
	self disableNextButton

	