world menu
menuCommandOn: aBuilder
	<worldMenu>
	(aBuilder item: #'Live chat')
			order: 0.002; 
			parent: self projectName asSymbol;
			label: 'Live chat';
			icon: self discord;
			action: [ WebBrowser openOn: 'https://discord.gg/bAuNJMP'  ]