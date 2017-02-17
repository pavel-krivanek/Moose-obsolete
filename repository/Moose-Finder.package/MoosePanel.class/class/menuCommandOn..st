menu
menuCommandOn: aBuilder
	<worldMenu>
	(aBuilder item: #'MoosePanel')
		order: 1.0; 
		parent: #Moose;
		label: 'Moose Panel';
		icon: (MooseIcons mooseIcon scaledToSize: 16@16);
		action:[MoosePanel open];
		withSeparatorAfter