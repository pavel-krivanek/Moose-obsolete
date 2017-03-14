private
addAllTo: aCollection
	"this inverts #addAll: because #addAll: uses #do: instead of #to:do:
	because it accepts non-SequenceableCollection arguments"
	1 to: collection size do: [:i |
		aCollection addLast: (collection at: i)]