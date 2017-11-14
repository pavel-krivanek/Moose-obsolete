as yet unclassified
convertColumnsToFloat: collectionOfIntegers
	^ self convertColumns: collectionOfIntegers to: [ :s | Float readFrom: s ]