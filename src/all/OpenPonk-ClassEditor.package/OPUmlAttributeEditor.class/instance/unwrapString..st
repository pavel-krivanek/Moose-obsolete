accessing
unwrapString: aString
	(aString beginsWith: '''') & (aString endsWith: '''')
		ifTrue: [ ^ (aString allButFirst: 1) allButLast: 1 ].
	^ aString