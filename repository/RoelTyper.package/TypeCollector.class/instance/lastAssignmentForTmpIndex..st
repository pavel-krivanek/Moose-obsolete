private
lastAssignmentForTmpIndex: anIndex 
	| assignments |
	assignments := ((localTypingResults at: currentExtractedMethod) at: anIndex) assignments.
	^ assignments isEmpty 
		ifTrue: [ nil ]
		ifFalse: [ assignments last ]