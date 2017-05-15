world menu
menuCommandOn: aBuilder
	<worldMenu>
	(aBuilder item: ('Make ', self projectName, ' Better') asSymbol)
			order: 0.002; 
			parent: #Roassal;
			label: 'Make ', self projectName, ' Better';
			icon: (Smalltalk ui icons iconNamed: #thumbsUp);
			action: [ self new open. WebBrowser openOn: 'http://www.lulu.com/shop/http://www.lulu.com/shop/alexandre-bergel/agile-visualization/paperback/product-22853677.html' ]