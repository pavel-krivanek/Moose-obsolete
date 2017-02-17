utils - morph creation
newGroupboxNamed: aString 
	"Answer a groupbox with the given label."
	^ GroupboxMorph new
		"cornerStyle: #rounded;"
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		label: aString;
		yourself
		
