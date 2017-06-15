building
modelsIn: composite
	composite list 
			title: 'Models';
			titleIcon: MooseIcons mooseNavigation;
			display: [:root | MooseModel root entities];
			format: #name;
			updateOn: MooseEntityAdded from: [ :root | MooseModel root announcer ];
			updateOn: MooseEntityRemoved from: [ :root | MooseModel root announcer ];
			updateOn: MooseEntityRenamed fromAll: [ :root | MooseModel root entities collectAsSet: #announcer ];
			dynamicActionsOnSelection: [ :list | list selection mooseInterestingEntity mooseFinderActions ];
			dynamicActions: [:root | 
		MoosePanelCommand allCommands asOrderedCollection collect: [:each | 
			GLMGenericAction new
				title: each new label;
				"category: each new category;"
				action: [each new execute];
				icon: each new icon ] ]