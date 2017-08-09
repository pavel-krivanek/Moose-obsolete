accessing
elementNamed: aString

	| newName |
	
	newName := 'FmxJava.', (aString withoutPrefix: 'FAMIX.').

	^self elementNamed: newName ifAbsent: [ self error: 'Element ''', newName, ''' not found.' ]