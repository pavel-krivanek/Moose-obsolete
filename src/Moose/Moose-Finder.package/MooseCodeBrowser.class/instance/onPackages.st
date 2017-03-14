building
onPackages
	browser
		transmit to: #packages;
		andShow: [ :a |
			a tree
				title: 'Packages';
				display: [ :scopes | scopes select: #isRoot ];
				children: [ :scope | scope childScopes ];
				format: [ :scope | scope name ];
				dynamicActionsOnSelection: [ :list | list selection mooseFinderActions ];
				filterOn: [ :text :each | text match: each name ] ]