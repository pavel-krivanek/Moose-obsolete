printing
mooseDisplayStringOn: stream
	
	((self referenceVersion isNil or: [ self referenceVersion versionEntity isNil ])
		or: [ self versionEntity isNil ]) 
			ifTrue: [ ^ super mooseDisplayStringOn: stream ].
			
	stream nextPutAll: (self referenceVersion versionEntity name , ' - ', self versionEntity mooseDisplayString)