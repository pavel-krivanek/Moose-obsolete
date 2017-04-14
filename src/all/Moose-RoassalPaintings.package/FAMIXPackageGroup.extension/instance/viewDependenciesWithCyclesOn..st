*Moose-RoassalPaintings
viewDependenciesWithCyclesOn: aView
	
	| tarjan |	
	tarjan := MalTarjan new.
	tarjan nodes: self.
	tarjan edges: self from: #yourself toAll: [:each | each querySureOutgoingAssociations atPackageScope withoutSelfLoops ].
	tarjan run.
	
	aView shape rectangle
		width: #numberOfClasses; 
		height: [:each | each numberOfMethods / 10];
		borderColor: Color gray;
		fillColor: [ :each | (tarjan findNode: each) isInCycle
				ifTrue: [Color red]
				ifFalse: [Color white]].
	aView nodes: self.
	aView edges
		connectFrom: #yourself toAll: #providerPackages.
	aView layout dominanceTree.