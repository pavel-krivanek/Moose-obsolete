utils - morph creation
newGroupBoxNamed: aString with: aMorph 
	"Answer a groupbox with the given label and control."
	^ (self newGroupboxNamed: aString)
		addContentMorph: aMorph;
		yourself