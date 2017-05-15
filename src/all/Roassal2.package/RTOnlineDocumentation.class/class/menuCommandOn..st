world menu
menuCommandOn: aBuilder
	<worldMenu>
	(aBuilder item: #'Online documentation')
			order: 0.001; 
			parent: #Roassal;
			label: 'Online documentation';
			icon: (Smalltalk ui icons iconNamed: #smallHelp);
			action: [ WebBrowser openOn: 'http://AgileVisualization.com' ]