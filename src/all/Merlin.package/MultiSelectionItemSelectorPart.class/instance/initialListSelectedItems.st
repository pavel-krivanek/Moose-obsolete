control - initial list
initialListSelectedItems
	|indexesSelected result |

	indexesSelected := OrderedCollection new.
	initialListSelections  keysAndValuesDo: [:key :value | value ifTrue: [indexesSelected add: key]].	
	
	result := OrderedCollection new.
	indexesSelected do: [:each | result add: (initialList at: each) asString].
	
^result