accessing
linePathFor: anEdge
	^ String
		streamContents: [ :s | 
			s
				nextPutAll: 'M';
				nextPutAll: anEdge from position x asFloat asString;
				nextPutAll: ',';
				nextPutAll: anEdge from position y asFloat asString;
				nextPutAll: ' ';
				nextPutAll: anEdge to position x asFloat asString;
				nextPutAll: ',';
				nextPutAll: anEdge to position y asFloat asString ]