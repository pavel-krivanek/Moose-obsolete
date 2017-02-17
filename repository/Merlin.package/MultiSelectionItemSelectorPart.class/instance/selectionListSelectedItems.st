control - selection list
selectionListSelectedItems
	|indexesSelected|

	indexesSelected := OrderedCollection new.
	selectionListSelections keysAndValuesDo: [:key :value | value ifTrue: [indexesSelected add: key]].	
	
	^indexesSelected collect: [:each | selectionList at: each].