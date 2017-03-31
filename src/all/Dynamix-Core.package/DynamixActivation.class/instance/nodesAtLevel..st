accessing-derived
nodesAtLevel: aLevel 
	"returns an ordered Collection of all the nodes of a tree at a given level"

	^self sortedChildren select: [ :each | each level = aLevel ].