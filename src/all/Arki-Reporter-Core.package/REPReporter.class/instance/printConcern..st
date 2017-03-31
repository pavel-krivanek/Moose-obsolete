private
printConcern: aConcern
	self printConcernStart: aConcern.
	aConcern status isFailureStatus ifTrue: [
		stream 
			tab; tab;
			nextPutAll: '<error type="TestFailure" message="';
					nextPutAll: (self encode: aConcern explanation);
					nextPutAll: (self encode: ' (');
					nextPutAll: (self encode: aConcern stakeholder);
					nextPutAll: (self encode: ')');
				nextPutAll: '">';
				lf;
				nextPutAll: (self encode: aConcern stringResult);
			nextPutAll: '</error>';
			lf
		].
	aConcern status isNeutralStatus ifTrue: [
		stream
			tab; tab;
			nextPutAll: '<system-out>';
				nextPutAll: (self encode: aConcern stringResult);
			nextPutAll: '</system-out>';
			lf
		].
	self printConcernEnd: aConcern 