namespacing
resolvePrefix: aPrefix ifUnresolvable: aBlock
	"This resolves the attribute prefix aPrefix or returns the result of
	evaluated aBlock if aPrefix is empty (attributes must be prefixed to have
	a namespace) or undeclared"

	^ (self hasParent
		and: [aPrefix size > 0]) "no default namespace for attributes"
		ifTrue: [
			self parent
				resolvePrefix: aPrefix
				ifUnresolvable: aBlock]
		ifFalse: [aBlock value]