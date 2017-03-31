filtering
withinNamespace: aFAMIXNamespace 

	^ self anyCandidateSatisfy: [ :candidate | candidate namespaceScope == aFAMIXNamespace ]
