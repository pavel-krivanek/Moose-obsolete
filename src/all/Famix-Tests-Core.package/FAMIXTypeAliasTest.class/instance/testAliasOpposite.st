tests
testAliasOpposite
	| type alias |
	type := FAMIXType new.
	self assert: type typeAliases isEmpty.
	alias := FAMIXTypeAlias new.
	alias aliasedType: type.
	self assert: alias aliasedType == type.
	self assert: type typeAliases size equals: 1.
	self assert: type typeAliases first == alias