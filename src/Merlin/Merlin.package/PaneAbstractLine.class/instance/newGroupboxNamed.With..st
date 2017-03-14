morph tools
newGroupboxNamed: aString With: aMorph 
	"Answer a groupbox with the given label and control."
	^ (self newGroupboxNamed: aString)
		addContentMorph: aMorph;
		yourself