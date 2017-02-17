private
rejectDependencies: aConditionBlock 
	
	^ self newAssocResultWith: (self storage reject: aConditionBlock )