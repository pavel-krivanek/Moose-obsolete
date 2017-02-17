ui
mooseFinderChildrenTreeIn: composite 
	<moosePresentationOrder: 80>
	composite tree 
		titleIcon: MooseIcons mooseTree;
		title: 'Children tree';
		rootsExpanded;
		display: [:entity | {entity mooseInterestingEntity}];
		format: [:each | each mooseDisplayString];
		children: [ :each | each children ];
		icon: #mooseIcon