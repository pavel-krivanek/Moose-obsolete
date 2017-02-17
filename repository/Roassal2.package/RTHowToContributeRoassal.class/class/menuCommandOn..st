world menu
menuCommandOn: aBuilder
	<worldMenu>
	(aBuilder item: #'How To Contribute')
			order: 0.002; 
			parent: #Roassal;
			label: 'How To Contribute';
			icon: (Smalltalk ui icons iconNamed: #smallLanguageIcon);
			action: [ self new open ]