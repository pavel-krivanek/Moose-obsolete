*Moose-Finder
mooseFinderHierarchyIn: composite
	<moosePresentationOrder: 20>
	composite roassal2
			title: 'Hierarchy';
			titleIcon: MooseIcons mooseSystemComplexity;
			initializeView: [ RTMondrian new ];
			painting: [ :b | self viewHierarchyOn: b ]