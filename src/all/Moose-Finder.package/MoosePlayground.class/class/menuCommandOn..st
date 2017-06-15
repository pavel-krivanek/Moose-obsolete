world menu
menuCommandOn: aBuilder
	<worldMenu>
	(aBuilder item: #'Moose Playground')
		order: 1.0; 
		parent: #Moose;
		label: 'Moose Playground';
		icon: (MooseIcons mooseIcon scaledToSize: 16@16);
		action:[ MoosePlayground open ];
		withSeparatorAfter