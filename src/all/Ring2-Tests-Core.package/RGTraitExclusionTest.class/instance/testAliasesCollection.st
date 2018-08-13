tests
testAliasesCollection
	
	| traitAlias env alias1 alias2 alias3 |

	traitAlias := RGTraitAlias unnamed.
	env := traitAlias environment.

	self assert: traitAlias aliases isEmpty.
	self assert: (traitAlias hasUnresolved: #aliases).
	
	alias1 := (#m2 -> #m1).
	traitAlias addAlias: alias1.
	self assert: traitAlias aliases size equals: 1.

	self assert: (traitAlias hasResolved: #aliases).
	
	alias2 := (#m4 -> #m3).
	traitAlias addAlias: alias2.
	self assert: traitAlias aliases size equals: 2.
	
	alias3 := (#m6 -> #m5).
	traitAlias addAlias: alias3.
	self assert: traitAlias aliases size equals: 3.

	traitAlias removeAlias: alias3.
	self assert: traitAlias aliases size equals: 2.

	traitAlias cleanAliases.
	self assert: traitAlias aliases isEmpty.
	self assert: (traitAlias hasResolved: #aliases).
