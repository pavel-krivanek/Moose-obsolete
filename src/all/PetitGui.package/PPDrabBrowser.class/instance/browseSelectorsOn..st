browse
browseSelectorsOn: aBrowser
	aBrowser list
		title: 'Productions';
		format: [ :class | class asString ];
		display: [ :class | 
			((((class allInstVarNames
				copyWithoutAll: class ignoredNames)
				copyWithoutAll: self rootClass allInstVarNames)
				collect: [ :each | each asSymbol ])
				select: [ :each | class includesSelector: each ])
				asSortedCollection ];
		selectionAct: [
			| selector |
			selector := UIManager default 
				request: 'Production name' 
				initialAnswer: self selectedSelector
				title: 'New production'.
			selector ifNotNil: [ 
				self performRefactoring: (PPRenameProdcutionRefactoring
					onClass: self selectedClass
					rename: self selectedSelector
					to: selector asSymbol).
				self selectedSelector: selector asSymbol ] ]
			on: $r entitled: 'Rename... (r)';
		selectionAct: [
			self performRefactoring: (PPRemoveProductionRefactoring
				onClass: self selectedClass
				production: self selectedSelector).
			self selectedSelector: nil ]
			on: $r entitled: 'Remove (x)';
		selectionAct: [
			Smalltalk tools browser 
				openOnClass: self selectedClass 
				selector: self selectedSelector ] 
			on: $b entitled: 'Browse (b)'