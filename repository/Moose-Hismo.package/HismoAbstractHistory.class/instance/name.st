public interface
name
	"answers the name of the history"
	
	^self isEmpty
		ifFalse: [self first versionEntity name]
		ifTrue: ['']