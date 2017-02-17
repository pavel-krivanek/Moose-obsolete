removing
removeFirst: aNumber
	| removed |

	removed := self copyFrom: 1 to: aNumber.
	aNumber timesRepeat: [self removeFirst].
	^ removed.