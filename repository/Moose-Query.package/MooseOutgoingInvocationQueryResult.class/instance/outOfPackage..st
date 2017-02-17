filtering
outOfPackage: aFAMIXPackage 
	
	^ self noOrAnyCandidateSatisfy: [ :candidate | candidate packageScope ~= aFAMIXPackage ]