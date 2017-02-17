accessing
value: aCollection
	aCollection ifEmpty: [ ^self ].
	^self noMoreNull value: aCollection