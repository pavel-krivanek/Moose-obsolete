tests-parse tree creation
testCodeReturnType
	| compiler parser |
	(compiler := SmaCCGrammarCompiler new) codeGenerator defaultCategory: self class category.
	compiler
		buildDefinition:
			'<a> : a;
			<b> : b;
			<whitespace> : \s+;
			%root FooNode;
			File : A ''aNode'' B ''bNode'' C ''cNode'' {{FooNode}};
			A : <a> {''1''};
			B : <b> {^''1''};
			C : "C" ''c'' {^c};
			D : "D" {^''2''};
			E : "E" {^[]};'.
	compiler compileInto: 'TestScanner' andParser: 'TestParser'.
	parser := self parserClass basicNew.
	self assert: (parser symbolTypes at: (parser symbolNames indexOf: 'A')) = #SmaCCToken.
	self assert: (parser symbolTypes at: (parser symbolNames indexOf: 'B')) = #SmaCCToken.
	self assert: (parser symbolTypes at: (parser symbolNames indexOf: 'C')) = #SmaCCToken.
	self assert: (parser symbolTypes at: (parser symbolNames indexOf: 'D')) = '' class name.
	self assert: ([  ] class includesBehavior: (Smalltalk at: (parser symbolTypes at: (parser symbolNames indexOf: 'E'))))