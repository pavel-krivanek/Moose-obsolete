testing
definition
	"Answer a String that defines the receiver"

	^String streamContents: [:stream |
		stream nextPutAll: 'Trait'.
		stream nextPutAll: ' named: ';
				store: self owner name.
		stream cr; tab; nextPutAll: 'uses: ';
				nextPutAll: self owner traitCompositionString.
		stream cr; tab; nextPutAll: 'category: ';
				store: self owner category asString].