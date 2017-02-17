instance creation
fromPackage: aRPackage
	^ self new 
		thePackage: aRPackage;
		thePackageName: aRPackage packageName;
		yourself