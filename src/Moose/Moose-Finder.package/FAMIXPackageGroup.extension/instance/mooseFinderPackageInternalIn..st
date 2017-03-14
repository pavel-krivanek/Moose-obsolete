*moose-finder
mooseFinderPackageInternalIn: composite
	<moosePresentationOrder: 20>
	composite roassal2
			title: 'Dependencies';
			titleIcon: MooseIcons mooseDependencies;
			initializeView: [ RTView new ];
			painting: [ :view :each | 
						each  viewPackageInternalOn: view ]