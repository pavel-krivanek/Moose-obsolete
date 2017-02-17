public interface
mooseNameOn: stream
	
	(self referenceVersion isNil or: [ self versionEntity ])
		ifTrue: [ ^ super mooseNameOn: stream ].
	stream nextPutAll: (self referenceVersion name , ' - ' , self versionEntity mooseName)