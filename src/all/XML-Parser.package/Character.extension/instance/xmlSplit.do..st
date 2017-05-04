*XML-Parser
xmlSplit: aString do: aBlock
	"faster, portable version"
	| start |

	start := 1.
	1 to: aString size do: [:end |
		"avoid #== for compatibility with pre-Spur VMs where wide chars
		aren't an immediate type"
		(aString at: end) = self
			ifTrue: [
				aBlock value: (aString copyFrom: start to: end - 1).
				start := end + 1]].
	start > aString size
		ifTrue: [
			"either aString is empty or it ends with self"
			aBlock value: '']
		ifFalse: [aBlock value: (aString copyFrom: start to: aString size)].