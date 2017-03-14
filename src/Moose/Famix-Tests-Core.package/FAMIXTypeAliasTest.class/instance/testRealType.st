tests
testRealType
	| type alias aliasalias |
	type := FAMIXType new name: 'Type'.
	alias := FAMIXTypeAlias new name: 'Alias'.
	alias aliasedType: type.
	aliasalias := FAMIXTypeAlias new name: 'Alias'.
	aliasalias aliasedType: alias.
	self assert: alias realType equals: type.
	self assert: aliasalias realType equals: type.
	self assert: type realType equals: type