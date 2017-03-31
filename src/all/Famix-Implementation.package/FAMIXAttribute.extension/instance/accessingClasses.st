*Famix-Implementation
accessingClasses

	^(self accessingMethods collectAsSet: [:each | each belongsTo]) asOrderedCollection