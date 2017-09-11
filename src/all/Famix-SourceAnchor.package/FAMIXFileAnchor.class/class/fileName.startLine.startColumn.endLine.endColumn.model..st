instance creation
fileName: aString startLine: anInteger startColumn: anInteger2 endLine: anInteger3 endColumn: anInteger4 model: aMooseModel
	^ self new
		mooseModel: aMooseModel;
		fileName: aString;
		startLine: anInteger;
		startColumn: anInteger2;
		endLine: anInteger3;
		endColumn: anInteger4;
		yourself