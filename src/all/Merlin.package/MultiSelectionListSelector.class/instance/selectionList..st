selection list control
selectionList: aCollection

	selectionList := aCollection.
	selectionListSelections := Dictionary new.
	1 to: selectionList size do: [:index | selectionListSelections at: index put: false].
	
	self changed: #selectionList.
	
	"Here we check that the selectionListIndex is updated according the new list size  "
	self selectionListIndex > self selectionList size ifFalse: [^self].
	self changeSelectionListIndex: self selectionList size.
	
	"if the list has become empty, we disable the next button"
	"self selectionList isEmpty
		ifTrue: [ self enableNextButton: false]
		ifFalse: [ self enableNextButton: true]."

	
