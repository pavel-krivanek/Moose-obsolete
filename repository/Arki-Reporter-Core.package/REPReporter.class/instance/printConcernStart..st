private
printConcernStart: aConcern
	stream
		tab; 
		nextPutAll: '<testcase '; 
			nextPutAll: 'classname="'; nextPutAll: (self encode: aConcern label);  
			nextPutAll: '" name="('; nextPutAll: (self encode: aConcern label); 
			nextPutAll: ')" time="'; print: 0.1; nextPutAll: '">'; 
		lf