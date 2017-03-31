*petitislands
nextSets: aNextDictionary into: aSet
	"return true/false, if something has changed or not...."
	| childSet change tally |
	
	change := false.

	self children do: [:each | 
		childSet := aNextDictionary at: each.
		tally := childSet size.
		childSet addAll: aSet.
		change := change or: [ tally ~= childSet size ].
	].

	^ change
	