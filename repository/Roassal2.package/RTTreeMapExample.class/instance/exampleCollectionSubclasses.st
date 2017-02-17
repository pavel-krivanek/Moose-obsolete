sources
exampleCollectionSubclasses

| b  |
b := RTTreeMapBuilder new.
	
b shape
	color: Color transparent;
	borderColor: Color black;
	if: [ :obj | obj isClass ] color: [ :cls | 
		(Smalltalk includesKey: (cls name, 'Test') asSymbol) ifTrue: [ Color green ]
		ifFalse: [ Color gray ] ].
b
	leafWeight: #numberOfLinesOfCode;
	explore: Collection
	using: #subclasses.
^ b