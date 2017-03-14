accessing
mooseDisplayStringOn: stream
	 
	| name | 
	name := ''. 
	self fragments 
		do: [:fragment | name := name , ' [' , fragment shortName , ']']. 
	stream nextPutAll: ('Instances:' , name)