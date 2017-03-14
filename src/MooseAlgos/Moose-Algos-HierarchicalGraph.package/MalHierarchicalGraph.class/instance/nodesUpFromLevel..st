enumerating
nodesUpFromLevel: aLevel
	"Returns a collection of all nodes on given and on higher levels (higher means nearer to the root node"
	| result currLevel |
	result := OrderedCollection new.
	currLevel := aLevel.
	[ aLevel >= 0 ] whileTrue: [ 
		result addAll: (levels at: currLevel).
		currLevel := currLevel - 1.
	].
	
	 ^ result.