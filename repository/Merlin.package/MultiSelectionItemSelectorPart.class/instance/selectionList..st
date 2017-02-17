control - selection list
selectionList: aCollection

	selectionList := aCollection.
	selectionListSelections := Dictionary new.
	1 to: selectionList size do: [:index | selectionListSelections at: index put: false].
	
	self changed: #selectionList.
	
	"Here we check that the selectionListIndex is updated according the new list size  "
	self selectionListIndex > self selectionList size ifFalse: [^self].
	self changeSelectionListIndex: self selectionList size.
	