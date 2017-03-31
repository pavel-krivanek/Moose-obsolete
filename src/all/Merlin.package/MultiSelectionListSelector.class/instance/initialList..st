initial list control
initialList: aCollection

	initialList := aCollection.
	initialListSelections := Dictionary new.
	1 to: initialList size do: [:index | initialListSelections at: index put: false].
	self changed: #initialList.
	
	"Here we check that the initialListIndex is updated according the new list size  "
	self initialListIndex > self initialList size ifFalse: [^self].
	self changeInitialListIndex: self initialList size.
	"initialListIndex := 0."
	
	
	