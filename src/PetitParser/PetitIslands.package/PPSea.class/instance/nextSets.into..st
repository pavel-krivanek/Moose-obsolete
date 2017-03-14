analysis
nextSets: aNextDictionary into: aSet
	"return true/false, if something has changed or not...."
	| islandSet change tally |
	
	change := false.
	
	"
		I rewrite the super implementation in order not to avoid updates in the
		before/after water (that would be unfortunate...)
	"
	islandSet := aNextDictionary at: island.
	tally := islandSet size.
	islandSet addAll: aSet.
	change := tally ~= islandSet size.

	^ change
	