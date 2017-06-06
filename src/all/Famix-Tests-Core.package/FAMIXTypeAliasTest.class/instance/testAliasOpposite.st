tests
testAliasOpposite
	| type alias |
	type := FAMIXType new.
	self assert: type typeAliases isEmpty.
	alias := self actualClass new
		aliasedType: type;
		yourself.
	self assert: alias aliasedType == type.
	self assert: type typeAliases size equals: 1.
	self assert: type typeAliases first == alias