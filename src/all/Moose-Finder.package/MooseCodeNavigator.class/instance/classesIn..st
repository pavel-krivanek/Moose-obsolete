building
classesIn: a
	^ a tree
		title: 'Classes';
		display: [ :namespace | namespace classes asSortedCollection: [ :x :y | x name < y name ] ];
		format: [ :class | class stubFormattedName ];
		dynamicActionsOnSelection: [ :list | list selection mooseInterestingEntity mooseFinderActions ]