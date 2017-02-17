*moose-finder
mooseFinderDependenciesIn: composite
	"Does not work, and no idea how to fix it"
	"<moosePresentationOrder: 20>"
	composite roassal2
			title: 'Dependencies';
			titleIcon: MooseIcons mooseDependencies;
			initializeView: [ RTMondrian new ];
			painting: [ :view :each | 
						each mooseInterestingEntity viewDependenciesWithCyclesOn: view ]