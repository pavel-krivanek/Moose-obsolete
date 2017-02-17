private
validateNamespacePrefix
	(self usesNamespaces
		and: [self hasPrefix])
		ifTrue: [
			self namespaceScope
				validateAndResolvePrefix: self prefix
				ofElement: self name]