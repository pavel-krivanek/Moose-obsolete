public interface
mooseNameOn: stream
	"returns the unique name of the history"
	
	^ (self isEmpty not and: [ self first versionUniqueName notNil ])
		ifTrue: [ stream nextPutAll: self first versionUniqueName ]
		ifFalse: [ super mooseNameOn: stream ]