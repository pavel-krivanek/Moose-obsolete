accessing
badNmtokens
	^ #('' ' ' '	'),
		(XMLCharacterMethodsTest nonNameChars collect: [:each |
			'test' copyWith: each])