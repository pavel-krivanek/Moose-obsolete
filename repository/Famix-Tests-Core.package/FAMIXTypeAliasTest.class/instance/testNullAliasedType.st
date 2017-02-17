tests
testNullAliasedType
	| alias |
	alias := FAMIXTypeAlias new name: 'Alias'.
	self assert: alias superclassHierarchy isEmpty.
	self assert: alias subclassHierarchy isEmpty.