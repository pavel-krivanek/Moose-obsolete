instance creation
unresolvedNamed: aString withParent: anRGDefintion

	^self basicNew
		initializeUnresolved; 
		pvtName: aString asSymbol;
		parent: anRGDefintion;
		yourself