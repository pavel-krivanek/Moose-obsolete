copying
copyWithoutAll: aCollection
	| copy |

	copy := self copy.
	aCollection do: [:each | copy remove: each ifAbsent: [nil]].
	^ copy.