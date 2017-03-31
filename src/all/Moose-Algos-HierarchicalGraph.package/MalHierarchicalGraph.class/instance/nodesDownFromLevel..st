enumerating
nodesDownFromLevel: aLevel
	"Returns a Collection of all nodes on given and on deeper levels (deeper meaning farer away from the root nodes)."
	| result currLevel |
	
	result := OrderedCollection new.
	currLevel := aLevel.
	
	[ levels includesKey: currLevel ] whileTrue: [ 
		result addAll: (levels at: currLevel).
		currLevel := currLevel + 1.
	].
	
	 ^ result.