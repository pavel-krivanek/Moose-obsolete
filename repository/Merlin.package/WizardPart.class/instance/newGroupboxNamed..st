morph content setup tools
newGroupboxNamed: aString 
	<lint: 'Utility methods' rationale: 'defined here to facilate the use of the library' author: 'cyrille.delaunay'>
	"Answer a groupbox with the given label."
	^ GroupboxMorph new
		cornerStyle: #rounded;
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		label: aString;
		yourself
		
