world menu
menuCommandOn: aBuilder
	<worldMenu>
	(aBuilder item: #'Live chat')
			order: 0.002; 
			parent: #Roassal;
			label: 'Live chat';
			icon: (Smalltalk ui icons iconNamed: #smallLanguageIcon);
			action: [ WebBrowser openOn: 'https://discord.gg/bAuNJMP'  ]