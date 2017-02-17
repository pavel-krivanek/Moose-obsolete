morph content setup tools
newGroupboxNamed: aString WithAll: aCollectionOfMorph 
	"Answer a groupbox with the given label and controls."
	^ (self newGroupboxNamed: aString)
		addContentMorph: (self newColumnWith: aCollectionOfMorph);
		yourself