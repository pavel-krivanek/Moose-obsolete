accessing
mooseNameOn: stream
	stream nextPutAll: 'Multiplication:'.
	self fragments do: [:fragment | 
		stream 
			nextPutAll: ' [';
			nextPutAll: fragment shortName;
			nextPutAll:  ']']