control - text entry
evaluateTextEntryContents
	"make a selection by evaluating the text entry content"
	| selectionCollection |
	
	selectionCollection := Smalltalk compiler 
		evaluate: self smalltalkExpressionToEvaluate
		for: self
		logged: false.
		
	selectionCollection do: 
		[ :each | 
		(self selectionList includes: each) ifFalse: [ 
			self updateSelectionListByAdding: each.
			self updateInitialListByRemoving: each 
			] 
		]. 