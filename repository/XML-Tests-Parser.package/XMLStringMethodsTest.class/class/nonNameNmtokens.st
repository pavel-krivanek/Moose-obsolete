accessing
nonNameNmtokens
	^ self nonNameStartCharNameChars collect: [:each | 'test' copyWithFirst: each]