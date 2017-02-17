compiling
initializeProperty: fameProperty with: value 
	| instVarName |
	instVarName := self instvarNameFor: fameProperty.
	initializeSource
		nextPutAll: '<n><t>';
		nextPutAll: instVarName;
		nextPutAll: ' := ';
		nextPutAll: value;
		nextPutAll: '.'.
	instVarNames add: instVarName