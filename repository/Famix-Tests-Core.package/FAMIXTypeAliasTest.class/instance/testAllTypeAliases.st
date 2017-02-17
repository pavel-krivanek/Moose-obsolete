tests
testAllTypeAliases
	| type alias aliasalias |
	type := FAMIXType new name: 'Type'.
	alias := FAMIXTypeAlias new name: 'Alias'.
	alias aliasedType: type.
	aliasalias := FAMIXTypeAlias new name: 'Alias'.
	aliasalias aliasedType: alias.
	self assert: alias allTypeAliases size equals: 1.
	self assert: aliasalias allTypeAliases isEmpty.
	self assert: type allTypeAliases size equals: 2