control - initial list
changeInitialListIndex: newListIndex 

	initialListIndex ~= 0 
		ifTrue: [initialListSelections at: initialListIndex put: false].
	newListIndex ~= 0 
		ifTrue: [
			initialListSelections at: newListIndex put: true.
			
			].
		
	initialListIndex := newListIndex.

"	self contentsChanged.	"
	