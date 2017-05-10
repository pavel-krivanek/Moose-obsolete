accessing
nonNameNmtokens
	^ XMLCharacterMethodsTest nonNameStartCharNameChars collect: [:each |
		'test' copyWithFirst: each]