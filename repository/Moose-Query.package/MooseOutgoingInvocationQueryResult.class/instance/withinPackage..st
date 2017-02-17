filtering
withinPackage: aFAMIXPackage 
	
	^ self anyCandidateSatisfy: [ :candidate | candidate packageScope == aFAMIXPackage ]