parsing
authorForStamp: aString
	
	^ aString isEmptyOrNil
		ifTrue: [ self historicalStamp ]
		ifFalse: [ self parseAuthorAliasFrom: aString ].