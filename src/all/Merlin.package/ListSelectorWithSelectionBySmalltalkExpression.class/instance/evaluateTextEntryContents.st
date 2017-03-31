text entry control
evaluateTextEntryContents
	"make a package selection by evaluating the text entry content"
	| selectionCollection |
	
	 [selectionCollection := Smalltalk compiler  
		evaluate: self smalltalkExpressionToEvaluate
		for: self
		logged: false.
		
	selectionCollection do: 
		[ :each | 
		(self selectionList includes: each) ifFalse: 
			[ self updateSelectionListByAdding: each.
			self updatePackagesListByRemoving: each ] ]. 
		self  deleteStringMessageFromRowIndexedBy: 2.]
	 
		on: Error
		do: [  
			self setTitleMessage: 'Select packages with a Smalltalk condition - INVALID EXPRESSION' toGroupboxInRowIndexedBy:2 
			]