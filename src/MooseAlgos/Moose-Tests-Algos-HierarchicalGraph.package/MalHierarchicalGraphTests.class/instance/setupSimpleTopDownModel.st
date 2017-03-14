setup
setupSimpleTopDownModel
	| parent randomizer nodesToProcess numberOfChildrenAdded child root levelsToCreate childrenToCreate |
	
	"If these values get changed, tests have to be adapted."
	levelsToCreate := 4.
	childrenToCreate := 3.

	numberOfChildrenAdded := 0.
	randomizer := Random new.
	root := MalHgTestModelSimple new.
	root model: 0.
	root level: 0.
	nodesToProcess := FILOStack new.
	nodesToProcess add: root.

	[nodesToProcess notEmpty] whileTrue: [
		parent := nodesToProcess pop.
		(parent level < levelsToCreate ) ifTrue: [ 
			[ numberOfChildrenAdded < childrenToCreate ] whileTrue: [ 
				child := MalHgTestModelSimple new.
				child parent: parent.
				child level: (parent level + 1).
				child model: ((randomizer next * 10)  + (10 raisedTo: (child level))) asInteger.
				parent children add: child.
				numberOfChildrenAdded := numberOfChildrenAdded + 1.
				nodesToProcess add: child.
			].
			numberOfChildrenAdded := 0.
		].
	].

	^ root.