namespacing
resolvePrefix: aPrefix
	"This resolves the attribute prefix aPrefix or returns an empty string
	if aPrefix is empty (attributes must be prefixed to have a namespace) or
	undeclared"

	^ self
		resolvePrefix: aPrefix
		ifUnresolvable: ''