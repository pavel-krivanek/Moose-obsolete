accessing-query
attributesNamed: aListOfSymbol
	
	^ aListOfSymbol collect: [ :each | self attributeNamed: each ]