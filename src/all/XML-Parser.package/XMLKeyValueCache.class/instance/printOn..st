printing
printOn: aStream
	| loadFactor |

	loadFactor := self loadFactor.
	super printOn: aStream.
	aStream
		nextPut: $(;
		print: loadFactor numerator;
		nextPut: $/;
		print: loadFactor denominator;
		nextPut: $).