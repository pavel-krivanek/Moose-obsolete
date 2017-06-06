tests
testRealType
	| type alias aliasalias |
	type := FAMIXType new name: 'Type'.
	alias := self actualClass new
		name: 'Alias';
		aliasedType: type;
		yourself.
	aliasalias := self actualClass new
		name: 'Alias';
		aliasedType: alias;
		yourself.
	self assert: alias realType equals: type.
	self assert: aliasalias realType equals: type.
	self assert: type realType equals: type