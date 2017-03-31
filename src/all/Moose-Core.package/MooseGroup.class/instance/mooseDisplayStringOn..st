printing
mooseDisplayStringOn: stream
	stream 
			nextPutAll: self description; 
			space; 
			nextPut: $(; 
			print: self size;
			nextPut: $)