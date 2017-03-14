*Moose-RoassalPaintings
viewDependenciesWithCyclesOn: view
	
	| tarjan |	
	tarjan := MalTarjan new.
	tarjan nodes: self.
	tarjan edges: self from: #yourself toAll: #providerNamespaces.
	tarjan run.

	view shape rectangle
		width: #numberOfClasses; 
		height: [:each | each numberOfMethods / 10];
		fillColor: [ :namespace|
			(tarjan findNode: namespace) isInCycle
				ifTrue: [Color red]
				ifFalse: [Color veryLightGray]].
	view interaction popupText: #mooseDisplayString.
	view nodes: self.
	view shape line color: (Color gray alpha: 0.2).
	view edges source: self connectFrom: #yourself toAll: #providerNamespaces.
	view layout dominanceTree layered.
	view view pushBackEdges