private
addAllIfNotPresentTo: aCollection
	"this inverts #addAll: because #addAll: uses #do: instead of #to:do:
	because it accepts non-SequenceableCollection arguments, and also
	does an #includes: test to avoid adding an already present node to
	the end of a node set, which whould left shift everything after
	its old position by one"
	1 to: collection size do: [:i | | node |
		node := collection at: i.
		(aCollection includes: node)
			ifFalse: [aCollection addLast: node]]