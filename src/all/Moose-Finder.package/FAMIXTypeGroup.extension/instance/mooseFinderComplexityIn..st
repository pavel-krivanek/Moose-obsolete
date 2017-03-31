*Moose-Finder
mooseFinderComplexityIn: composite
	<moosePresentationOrder: 20>
	composite roassal2
			title: 'Hierarchy';
			titleIcon: MooseIcons mooseSystemComplexity;
			initializeView: [ RTMondrian new ];
			painting: [ :b :each | 
				each mooseInterestingEntity viewSimpleSystemComplexityOn: b.
				self addSystemComplexityLegendOn: b view ]
