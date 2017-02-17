filtering
withinClass: aFAMIXClass 
	
	^ self anyCandidateSatisfy: [ :candidate | candidate typeScope == aFAMIXClass ]