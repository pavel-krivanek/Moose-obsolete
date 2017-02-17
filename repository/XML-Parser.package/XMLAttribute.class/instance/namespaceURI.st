accessing
namespaceURI
	| prefix |

	"attributes must have prefixes to be namespaced"
	(self hasParent
		and: [(prefix := self prefix) notEmpty])
		ifTrue: [^ self parent resolvePrefix: prefix]
		ifFalse: [^ '']