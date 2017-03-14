*Moose-RoassalPaintings
viewSystemNestingMapOnRaw: view
	^ FAMIXSystemNestingMap new 
		viewNamespaces: (self mooseModel allNamespaces select: [:each | 
									each allClasses anySatisfy: [:c | c isStub not ]])
		highlighting: self 
		onRaw: view