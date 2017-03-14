public - dots
moveDotInFront
	"
	Make the dots placed in front of the lines (if connected). Per default, dots are behind. Here is an example.
	
	b := RTGrapher new.
	ds := RTData new.
	ds dotShape color: Color red; size: 10.
	ds points: (Collection withAllSubclasses copyFrom: 1 to: 10).
	ds y: #numberOfMethods.
	ds connectColor: Color blue. 
	ds moveDotInFront.
	b add: ds.

	b
	"

	elementActions add: [ :elems |
		elems pushFront ]