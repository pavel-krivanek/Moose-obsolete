MooseKGB-TestFamix3-util
getMethod: methodNameString from: aFAMIXClass 
	 
	| mooseName | 
	mooseName := (aFAMIXClass mooseName asString , '.' 
		, methodNameString asString) asSymbol. 
	^self model entityNamed: mooseName