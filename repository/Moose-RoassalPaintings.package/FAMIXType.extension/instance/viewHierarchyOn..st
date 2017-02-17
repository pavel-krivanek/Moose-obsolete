*Moose-RoassalPaintings
viewHierarchyOn: view
	| hierarchy |
	hierarchy :=		(self withDeepCollect: [:each | each directSubclasses]), 
						(self deepCollect: [:each | each directSuperclasses reject: [:c | c isInterface]]).
	hierarchy asMooseGroup 
		viewSimpleSystemComplexityWithSelection: { self } 
		height: [ :c | c numberOfMethods ] 
		width: [ :c | c numberOfAttributes ] 
		color: [ :c | c numberOfLinesOfCode ] 
		on: view.
