*petitgui-mondrian
viewAllParsersOn: view

	view shape label 
		height: 10;
		text: [ :each | 
			| labels |
			labels := OrderedCollection new.
			each name notNil ifTrue: [ labels add: each name ].
			each visualizationGraphType notNil ifTrue: [ labels add: each visualizationGraphType ].
			labels asArray ];
		if: [ :p | p name isNil ] fillColor: Color lightGray.
	view nodes: self allParsers.
	view edges connectToAll: #children.	
	view treeLayout