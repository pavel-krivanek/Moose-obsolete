*Moose-Finder
mooseFinderTypesIn: composite
	<moosePresentationOrder: 40>
	composite list 
		title: 'Types';
		titleIcon: MooseIcons famixClassGroup;
		display: [ self types ];
		format: [ :each | each mooseName ];
		when: [ self types notEmpty ]