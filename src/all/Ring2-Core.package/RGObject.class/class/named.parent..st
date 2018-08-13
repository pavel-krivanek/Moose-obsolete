instance creation
named: aName parent: anRGObject

	^self basicNew
		parent: anRGObject;
		initialize;
		pvtName: aName asSymbol;
		yourself