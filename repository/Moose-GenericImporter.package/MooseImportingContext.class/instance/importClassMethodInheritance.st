importing-filters
importClassMethodInheritance
	
	self entityKindsToBeExtracted addAll: self class importClassAndDependents.
	self entityKindsToBeExtracted addAll: self class importMethodAndDependents.
	self entityKindsToBeExtracted
		addAll: self class importInheritanceAndDependents