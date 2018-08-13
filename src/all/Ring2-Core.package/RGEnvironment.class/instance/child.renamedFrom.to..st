as yet unclassified
child: aChildDefinition renamedFrom: oldName to: newName

	self queryInterface behaviorsDictionary removeKey: oldName ifAbsent: [].
	self queryInterface behaviorsDictionary at: newName asSymbol put: aChildDefinition.
