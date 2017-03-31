*Moose-Finder
mooseFinderWithinNestedMapIn: composite
	<moosePresentationOrder: 30>
	composite roassal2
			title: 'Nesting';
			titleIcon: MooseIcons mooseTreeMap;
			painting: [ :view :each | 
				each mooseInterestingEntity viewSystemNestingMapOnRaw: view ]
