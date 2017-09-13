accessing
wrapString: aString
	(aString beginsWith: '''') & (aString endsWith: '''')
		ifFalse: [ ^ '''' , aString , '''' ].
	^ aString