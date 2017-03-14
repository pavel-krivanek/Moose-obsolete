accessing
lexicalHandler: aLexicalHandler
	(lexicalHandler :=
		aLexicalHandler ifNil: [self defaultLexicalHandlerClass new])
			parser: self