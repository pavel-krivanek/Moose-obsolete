filtering
outOfClass: aFAMIXClass 
	
	^ self noOrAnyCandidateSatisfy: [ :candidate | candidate typeScope ~= aFAMIXClass ]