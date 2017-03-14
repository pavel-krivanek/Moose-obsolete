private
mergeTypes
	self flattenLinks.
	^self
		foldInterfaceTypes: (self rootsUnderstanding: self interface)
		withAssignmentTypes: self cleanedAssignments