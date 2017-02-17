private
lastAssignmentForIndex: anIndex
	| assignments |
	assignments := (self typingResults at: anIndex) assignments.
	^assignments isEmpty
		ifTrue: [nil]
		ifFalse: [assignments last]