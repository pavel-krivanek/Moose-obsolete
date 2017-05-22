tests-parse tree creation
testNextToken
	| compiler token |
	(compiler := SmaCCGrammarCompiler new) codeGenerator
		defaultCategory: self class category.
	compiler
		buildDefinition:
			'<next> : next; <whitespace> : \s+; 
			Next : <next>; '.
	compiler compileInto: 'TestScanner' andParser: 'TestParser'.
	token := self parserClass parse: ' next '