private
allNamespaceScopesWithValidationDo: aBlock whileTrue: aConditionalBlock
	"Updates the receiver's scope and the scopes of all descendants with aBlock
	where aConditional is true and validates the namespaces after"

	(aConditionalBlock value: self namespaceScope)
		ifTrue: [
			aBlock value: self namespaceScope.
			self
				validateNamespacePrefix;
				validateAttributeNamespacePrefixes.
			self elementsDo: [:each |
				each
					allNamespaceScopesWithValidationDo: aBlock
					whileTrue: aConditionalBlock]]