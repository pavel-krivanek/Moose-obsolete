private
addAllTo: aCollection
	"this inverts #addAll: because #addAll: uses #do: instead of #to:do:
	because it accepts non-SequenceableCollection arguments"
	1 to: self size do: [:i |
		aCollection addLast: (self at: i)]