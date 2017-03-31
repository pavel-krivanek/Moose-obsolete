private
allNamespaceScopesDo: aBlock whileTrue: aConditionalBlock
	"Updates the receiver's scope and the scopes of all descendants with aBlock
	where aConditional is true but does not validate the namespaces after"

	(aConditionalBlock value: self namespaceScope)
		ifTrue: [
			aBlock value: self namespaceScope.
			self elementsDo: [:each |
				each
					allNamespaceScopesDo: aBlock
					whileTrue: aConditionalBlock]]