browse-static
browseSourceOn: aBrowser
	aBrowser pharoMethod
		title: 'Source';
		useExplicitNotNil;
		display: [ self sourceCode ];
		smalltalkClass: [ self selectedClass ];
		act: [ :node |
			| refactoring |
			refactoring := PPDefineProductionRefactoring 	
				onClass: self selectedClass 
				source: node text asString
				protocols: #(production).
			self performRefactoring: refactoring.
			self selectedSelector: refactoring selector ]
		on: $s 
		entitled: 'accept (s)'