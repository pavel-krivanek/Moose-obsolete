importing-filters
importClassMethodInheritanceAttributeAccess
	
	self entityKindsToBeExtracted addAll: self class importClassAndDependents.
	self entityKindsToBeExtracted addAll: self class importMethodAndDependents.
	self entityKindsToBeExtracted
		addAll: self class importInheritanceAndDependents.
	self entityKindsToBeExtracted
		addAll: self class importAttributeAndDependents.
	self entityKindsToBeExtracted addAll: self class importAccessAndDependents