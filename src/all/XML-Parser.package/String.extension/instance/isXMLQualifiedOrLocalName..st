*XML-Parser
isXMLQualifiedOrLocalName: aQualifiedOrLocalName
	"returns true if self and aQualifiedOrLocalName are the
	same QName or if self is a QName and aQualifiedOrLocalName
	is the local part, or if they are the same NCName."
	| i |

	i := aQualifiedOrLocalName size.
	self size to: 1 by: -1 do: [:j |
		i == 0
			ifTrue: [^ (self at: j) == $:].
		"avoid #== for compatibility with pre-Spur VMs where wide chars
		aren't an immediate type"
		(aQualifiedOrLocalName at: i) = (self at: j)
			ifFalse: [^ false].
		i := i - 1].
	^ i = 0.