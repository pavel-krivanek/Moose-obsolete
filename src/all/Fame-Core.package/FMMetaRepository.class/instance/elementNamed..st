accessing
elementNamed: aString

	| newName entityName |
	
	entityName := (aString withoutPrefix: 'FAMIX.').
	(entityName = 'JavaSourceLanguage') ifTrue: [ entityName := 'JAVASourceLanguage' ].

	newName := 'FmxCompatibility.', entityName.

	^self elementNamed: newName ifAbsent: [ self error: 'Element ''', newName, ''' not found.' ]