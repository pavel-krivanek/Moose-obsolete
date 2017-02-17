menu
menuOpenPetitParserAllParsersBrowserOn: aBuilder
	<worldMenu>
	(aBuilder item: #PPBrowser)
		order: 20; 
		parent: #Moose;
		label: PPBrowser new title;
		action: [PPBrowser open]