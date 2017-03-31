accessing
elementNamed: aString
	^self elementNamed: aString ifAbsent: [ self error: 'Element ''', aString, ''' not found.' ]