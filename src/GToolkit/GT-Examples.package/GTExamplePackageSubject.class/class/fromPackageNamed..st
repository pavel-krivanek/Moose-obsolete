instance creation
fromPackageNamed: aString
	^ self new 
		thePackage: nil;
		thePackageName: aString asString;
		yourself