building
compose
	self
		title: 'Navigation';
		titleIcon: MooseIcons mooseNavigation.
	self list
		updateOn: MooseEntityAdded from: [ :anObject | anObject announcer ];
		updateOn: MooseEntityRemoved from: [ :anObject | anObject announcer ];
		display: [ :anObject | self displayFor: anObject ];
		send: [ :association | association value ];
		icon: [ :each | each value mooseInterestingEntity mooseIcon ];
		format: [ :each | self formatFor: each ];
		dynamicActionsOnSelection: [ :list | self dynamicActionsIn: list ]