world menu
menuCommandOn: aBuilder
	<worldMenu>
	(aBuilder item: #'About Roassal')
			order: 0.001; 
			parent: #Roassal;
			label: 'About Roassal';
			icon: (Smalltalk ui icons iconNamed: #smallLanguageIcon);
			action: [ self new open ]