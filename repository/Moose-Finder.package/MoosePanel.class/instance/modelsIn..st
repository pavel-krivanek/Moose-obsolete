building
modelsIn: composite
	composite list 
			title: 'Models';
			display: [:root | root entities];
			format: #name;
			updateOn: MooseEntityAdded from: [ :root | root announcer ];
			updateOn: MooseEntityRemoved from: [ :root | root announcer ];
			updateOn: MooseEntityRenamed fromAll: [ :root | root entities collectAsSet: #announcer ];
			dynamicActionsOnSelection: [ :list | list selection mooseInterestingEntity mooseFinderActions ]