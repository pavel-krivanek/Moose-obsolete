instance creation
unresolvedWithParent: anRGDefintion

	^self basicNew
		initializeUnresolved; 
		parent: anRGDefintion;
		yourself