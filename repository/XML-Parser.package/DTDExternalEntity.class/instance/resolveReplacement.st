resolving
resolveReplacement
	self hasUnresolvedReplacement
		ifTrue: [self unresolvedReplacement resolveForExternalEntity: self]