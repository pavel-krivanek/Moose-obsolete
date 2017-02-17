accessing
name: aStringOrSymbol
	| oldName |
	oldName := name.
	name := aStringOrSymbol.
	(oldName notNil and: [oldName ~= name]) ifTrue: [ 
		self announcer announce: (MooseEntityRenamed new oldName: oldName) ]