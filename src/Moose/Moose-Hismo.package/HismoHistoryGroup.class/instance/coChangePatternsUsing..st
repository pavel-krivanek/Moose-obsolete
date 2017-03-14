co-change
coChangePatternsUsing: aBlock 
	| concepts patterns |
	concepts := self coChangeConceptsUsing: aBlock.
	patterns := concepts select: [ :each | each relevantObjects size > 1 and: [ each attributes size > 2 ] ].
	^ patterns collect: 
		[ :each | 
		HismoCoChangePattern new
			histories: (each relevantObjects collect: #value);
			versions: (each attributes collect: #value);
			concept: each;
			yourself ]