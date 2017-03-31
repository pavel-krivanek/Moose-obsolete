namespacing
resolvePrefix: aPrefix ifUnresolvable: aBlock
	"Resolves the namespace URI of aPrefix (the defualt namespace URI if aPrefix
	is empty), including the predefined 'xml' and 'xmlns' prefixes. Returns the
	value of aBlock if aPrefix is unresolvable."

	self hasNamespaces "avoid lazy initializing the scope"
		ifTrue: [
			^ self namespaceScope
				resolvePrefix: aPrefix
				ifUnresolvable: aBlock]
		ifFalse: [^ aBlock value]