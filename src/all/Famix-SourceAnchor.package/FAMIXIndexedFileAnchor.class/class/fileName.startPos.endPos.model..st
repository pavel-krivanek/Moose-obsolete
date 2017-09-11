instance creation
fileName: aString startPos: anInteger endPos: anotherInteger model: aMooseModel
	^ self new
		mooseModel: aMooseModel;
		fileName: aString;
		startPos: anInteger;
		endPos: anotherInteger;
		yourself