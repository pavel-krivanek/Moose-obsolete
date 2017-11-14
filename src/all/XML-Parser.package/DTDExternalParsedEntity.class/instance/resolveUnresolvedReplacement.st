resolving
resolveUnresolvedReplacement
	self hasUnresolvedReplacement
		ifTrue: [self unresolvedReplacement resolveForExternalEntity: self]