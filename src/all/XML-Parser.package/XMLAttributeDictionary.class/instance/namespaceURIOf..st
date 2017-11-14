accessing
namespaceURIOf: aKey
	"Returns the namespace URI of the attribute name aKey"

	| prefix |

	^ (self usesNamespaces
		and: [(prefix := aKey xmlPrefixBeforeLocalName) notEmpty])
		ifTrue: [self resolvePrefix: prefix]
		ifFalse: ['']