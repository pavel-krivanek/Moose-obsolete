browse
browseClassesOn: aBrowser
	aBrowser tree
		title: 'Grammars';
		format: [ :class | class name ];
		children: [ :class | self subclassesOf: class ];
		selectionAct: [
			| className |
			className := UIManager default 
				request: 'Class name' 
				initialAnswer: '' 
				title: 'New Parser'.
			className ifNotNil: [ 
				PPRefactoringUtils new 
					performRefactoring: (PPAddParserRefactoring
						name: className asSymbol
						category: #ParserExample
						superclass: self selectedClass).
				self selectedClass: (self class environment classNamed: className) ] ]
			on: $n entitled: 'New ... (n)';
		selectionAct: [
			| superclass |
			superclass := self selectedClass superclass.
			self performRefactoring: (PPRemoveParserRefactoring onClass: self selectedClass).
			self selectedClass: superclass ]
			on: $r entitled: 'Remove (x)';
		selectionAct: [
			self selectedClass browse ]
			on: $b entitled: 'Browse (b)'