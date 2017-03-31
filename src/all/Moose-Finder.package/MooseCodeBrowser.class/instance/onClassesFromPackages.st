building
onClassesFromPackages
	browser
		transmit to: #classes; from: #packages;
		andShow: [ :a| 
			a list
					title: 'Classes';
					when: [:scope | scope isCollection not];
					display: [:scope | scope classes];
					dynamicActionsOnSelection: [ :list | list selection mooseFinderActions ];
					sorted: [:class1 :class2 | class1 name < class2 name ];
					format: [:class | class name]]