tests
testAllTypeAliases
	| type alias aliasalias |
	type := FAMIXType new name: 'Type'.
	alias := self actualClass new name: 'Alias'.
	alias aliasedType: type.
	aliasalias := self actualClass new name: 'Alias'.
	aliasalias aliasedType: alias.
	self assert: alias allTypeAliases size equals: 1.
	self assert: aliasalias allTypeAliases isEmpty.
	self assert: type allTypeAliases size equals: 2