accessing
queryKeys
	"Returns a SequenceableCollection of the unique percent/plus-decoded
	query string parameter keys"

	| keys |

	keys := OrderedCollection new: self rawQuery size.
	self queryKeysDo: [:each |
		keys addLast: each].
	^ keys.