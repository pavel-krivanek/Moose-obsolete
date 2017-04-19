world menu
menuCommandOn: aBuilder
	<worldMenu>
	(aBuilder item: #'Make Roassal Better')
			order: 0.002; 
			parent: #Roassal;
			label: 'Make Roassal Better';
			icon: (Smalltalk ui icons iconNamed: #thumbsUp);
			action: [ self new open. WebBrowser openOn: 'http://www.lulu.com/shop/http://www.lulu.com/shop/alexandre-bergel/agile-visualization/paperback/product-22853677.html' ]