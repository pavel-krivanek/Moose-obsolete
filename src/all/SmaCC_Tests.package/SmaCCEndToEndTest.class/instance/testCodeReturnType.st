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
			File : A ''aNode'' B ''bNode'' {{FooNode}};
			A : <a> {''1''};
			B : <b> {^''1''};'.
	compiler compileInto: 'TestScanner' andParser: 'TestParser'.
	parser := self parserClass basicNew.
	self assert: (parser symbolTypes at: (parser symbolNames indexOf: 'A')) = #SmaCCToken.
	self assert: (parser symbolTypes at: (parser symbolNames indexOf: 'B')) = #SmaCCToken