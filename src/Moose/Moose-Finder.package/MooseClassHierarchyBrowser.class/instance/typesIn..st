building
typesIn: a
	^ a tree
		display: [ :model | model allTypes select: [ :each | each isHierarchyRoot ] ];
		title: 'Types';
		dynamicActionsOnSelection: [ :list | list selection mooseFinderActions ];
		format: [:each | 
			each isStub ifTrue: [ Text 
					string: each mooseName
					attribute: TextColor gray ]
		ifFalse: [ Text fromString: each mooseName ] ];
		sorted: [ :type1 :type2 | type1 mooseName < type2 mooseName ];
		children: [ :each | each subclassHierarchy ]