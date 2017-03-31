*petitislands
nextSets: aNextDictionary into: aSet
	| change tally tmp childSet |
	
	change := false.

	self children keysAndValuesDo: [ :index :child |
		childSet := (aNextDictionary at: child). 
		tally :=  childSet size.

		index = parsers size ifTrue: [ 
			childSet addAll: aSet.
		] ifFalse: [  
			tmp := self subsequenceFrom: index + 1 to: parsers size.
			childSet add: tmp.
			tmp isIslandBorder ifFalse: [ 
				childSet addAll: aSet.
			]
		].
		change := change or: [ (aNextDictionary at: child) size ~= tally ]
 	].

	^ change