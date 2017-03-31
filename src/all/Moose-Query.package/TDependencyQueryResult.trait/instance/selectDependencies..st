private
selectDependencies: aConditionBlock 
	
	^ self newAssocResultWith: (self storage select: aConditionBlock )