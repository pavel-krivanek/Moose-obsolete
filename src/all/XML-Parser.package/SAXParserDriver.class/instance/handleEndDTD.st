handling - dtd
handleEndDTD
	(self resolvesExternalEntities
		and: [self hasExternalSubset
			and: [self isValidating
				or: [self isStandalone not]]])
		ifTrue: [self parseExternalSubset].
	self isValidating
		ifTrue: [self doctypeDefinition validateCompletedDefinition].
	isHandlingDTD := false.

	self saxHandler
		doctypeDefinition: self doctypeDefinition;
		endDTD.