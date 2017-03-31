enumerating
nodesOnLevel: aLevel
	"Returns a collection of all nodes on a certain level (a cross cut of the higraph)"
	^ levels at: aLevel ifAbsent: [ OrderedCollection new ].