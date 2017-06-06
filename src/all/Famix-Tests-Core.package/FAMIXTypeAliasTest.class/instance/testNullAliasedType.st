tests
testNullAliasedType
	| alias |
	alias := self actualClass new
		name: 'Alias';
		yourself.
	self assert: alias superclassHierarchy isEmpty.
	self assert: alias subclassHierarchy isEmpty