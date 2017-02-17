private
conflictingAssignmentsWith: anExtractedType
	| conflictingAssignments |
	conflictingAssignments := anExtractedType assignments
		select: [:assignment | (self types includes: assignment) not].
	^conflictingAssignments