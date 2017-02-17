parse support
sea: parser water: water
	^ self seaInstance 
		island: parser;
		water: water;
		yourself
	