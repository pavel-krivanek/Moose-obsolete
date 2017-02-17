building
namespacesIn: a
	^ a tree
		title: 'Namespaces';
		display: [ :model | (model allNamespaces select: #isRoot) sorted: [ :x :y | x name < y name ] ];
		children: [ :namespace | namespace childScopes asSortedCollection: [ :x :y | x name < y name ] ];
		format: [ :namespace | namespace stubFormattedName ];
		dynamicActionsOnSelection: [ :list | list selection mooseInterestingEntity mooseFinderActions ]