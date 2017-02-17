setup
setupSimpleNumbersHiGraph
	| hg leafs relationships |

	"Creates a very simple hiGraph with intergers as nodes. 
	It has 3 root nodes (1,2 and 3), some children and various relationships between them."
	
	leafs := OrderedCollection new.
	leafs add: 12; add: 19; add:24; add: 25; add:27; add: 28; add: 31; add: 34; add: 36.

	hg := MalHierarchicalGraph with: leafs.

	hg bottomUp: [ :n |  
		(n / 10 < 1) ifTrue: [ nil ] ifFalse: [(n / (10 raisedTo: (n floorLog: 10))) floor asInteger. ]
	].
	
	relationships := OrderedCollection new.
	
	relationships add: (12->19).
	relationships add: (19->24).
	relationships add: (19->31).
	relationships add: (19->27).
	
	relationships add: (25->12).
	relationships add: (25->19).
	relationships add: (25->19).
	relationships add: (25->34).
	
	relationships add: (34->12).
	relationships add: (34->31).
	relationships add: (36->25).
	relationships add: (36->24).
	
	hg addEdges: relationships
			sourceBlock: [ :e | e key ] 
			destinationBlock: [ :e | e value ].
			
	hg propagateEdges.
	
	^ hg