private
printConcern: aConcern
	stream 
		nextPutAll: '<h3>';
		nextPutAll: (self encode: aConcern label);
		nextPutAll: '</h3>';
		lf;
		nextPutAll: '<pre>';
		nextPutAll: (aConcern class methodNamed: #'computeResult') sourceCode;
		nextPutAll: '</pre>';
		lf.
	aConcern status isNeutralStatus ifTrue: [
		stream
			nextPutAll: '<ul>';
			nextPutAll: '<li>';
			nextPutAll: (('</li> <li>') join: (aConcern result asOrderedCollection collect: #mooseDisplayString));
			nextPutAll: '</li>';
"				nextPutAll: (self encode: aConcern stringResult);
				nextPutAll: '</li';
"			nextPutAll: '</ul>';
			lf
		].
