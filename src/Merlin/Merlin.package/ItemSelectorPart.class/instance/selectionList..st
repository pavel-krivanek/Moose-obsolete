control - selection list
selectionList: anObject 
	"Set the value of selectionList"
	
	selectionList := anObject.
	self changed: #selectionList.
	
	"we check the new size of the selection list. If nothing is selected, we can't go to the next 	'page'"
	"self enableNextButton: (self selectionList isEmpty not)."
	
	"Here we check that the selectionIndex is updated according the new list size  "
	self selectionListIndex > self selectionList size
		ifFalse: [^self ].
	
	self selectionListIndex: self selectionList size.
	self changed: #selectionListIndex .
	
	
			