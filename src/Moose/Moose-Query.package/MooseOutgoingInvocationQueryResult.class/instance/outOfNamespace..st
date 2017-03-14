filtering
outOfNamespace: aFAMIXNamespace 

	^ self noOrAnyCandidateSatisfy: [ :candidate | candidate namespaceScope ~= aFAMIXNamespace ]
