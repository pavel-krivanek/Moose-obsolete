accessing
removeNamespaceSelectorsFrom: aSelectorCollection
	^ aSelectorCollection reject: [:each |
		#(startPrefixMapping:uri: endPrefixMapping:) includes: each]
