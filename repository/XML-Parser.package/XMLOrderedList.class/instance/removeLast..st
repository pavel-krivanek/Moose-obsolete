removing
removeLast: aNumber
	| removed |

	removed := self copyFrom: self size - (aNumber - 1) to: self size.
	aNumber timesRepeat: [self removeLast].
	^ removed.