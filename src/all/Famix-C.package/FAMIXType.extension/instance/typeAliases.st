*Famix-C
typeAliases
	<MSEProperty: #typeAliases type: #FAMIXTypeAlias opposite: #aliasedType> <multivalued> <derived>
	<MSEComment: 'Aliases'>
	<package: #C>
	^ self privateState 
			attributeAt: #typeAliases
			ifAbsentPut: [FMMultivalueLink on: self opposite: #aliasedType:]