private
equalToNodeSet: aNodeSet
	| smallerNodeSet largerNodeSet |

	"From the spec:
		'If both objects to be compared are node-sets, then the comparison
	will be true if and only if there is a node in the first node-set and
	a node in the second node-set such that the result of performing the
	comparison on the string-values of the two nodes is true.'"
	value size < aNodeSet size
		ifTrue: [
			smallerNodeSet := value.
			largerNodeSet := aNodeSet]
		ifFalse: [
			smallerNodeSet := aNodeSet.
			largerNodeSet := value].
	smallerNodeSet size > 0
		ifTrue: [| smallerNodeSetStringValues |
			smallerNodeSetStringValues := Set new: smallerNodeSet size.
			smallerNodeSet do: [:each |
				smallerNodeSetStringValues add: each stringValue].
			largerNodeSet do: [:each |
				(smallerNodeSetStringValues includes: each stringValue)
					ifTrue: [^ true]]].
	^ false.